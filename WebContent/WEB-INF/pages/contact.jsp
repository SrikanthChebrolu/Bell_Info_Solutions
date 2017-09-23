<!DOCTYPE html>
<html lang="en">
<head>
<title>Contact Us</title>
<script>
function createUrl()
{
var action =  $("#action").val();
var searchtxt =  $("#searchtxt").val();
searchtxt = encodeURIComponent(searchtxt); 
if(searchtxt != '')
{
if(action ==  'Company')
{
var url = 'http://companyinfoz.com/search/company/'+searchtxt;
}
else if(action ==  'Director')
{

var url = 'http://companyinfoz.com/search/director/'+searchtxt;
}
window.location=url;
}
return false;    
}

function createUrl1(action)
{
var searchtxt =  $("#searchtxt").val();
searchtxt = encodeURIComponent(searchtxt); 
if(searchtxt != '')
{
if(action ==  'Company')
{
var url = 'http://companyinfoz.com/search/company/'+searchtxt;
}
else if(action ==  'Director')
{

var url = 'http://companyinfoz.com/search/director/'+searchtxt;
}
window.location=url;
}
return false;    
}

function convertTimestamp(timestamp) {
  var d = new Date(timestamp * 1000),    // Convert the passed timestamp to milliseconds
        yyyy = d.getFullYear(),
        mm = ('0' + (d.getMonth() + 1)).slice(-2),    // Months are zero based. Add leading 0.
        dd = ('0' + d.getDate()).slice(-2),            // Add leading 0.
        hh = d.getHours(),
        h = hh,
        min = ('0' + d.getMinutes()).slice(-2),        // Add leading 0.
        ampm = 'AM',
        time;
            
    if (hh > 12) {
        h = hh - 12;
        ampm = 'PM';
    } else if (hh === 12) {
        h = 12;
        ampm = 'PM';
    } else if (hh == 0) {
        h = 12;
    }
    
    // ie: 2013-02-18, 8:35 AM    
    time = yyyy + '-' + mm + '-' + dd + ', ' + h + ':' + min + ' ' + ampm;
        
    return time;
}

function submitComment(cin)
{
    
var comment = $("#comment").val();    


if(comment == '')
{
alert("Please enter comment");    
    
}

else
{
    var data={cin:cin, comment:comment,type:'comment',uid:''};
    $.ajax({type:'POST', url: 'http://companyinfoz.com/comment_save.php', data:data, success: function(response)
    {
        if(response != '')
        {
        var d = convertTimestamp(response);
        var str = '<li class="comment"><div class="comment-body"><div class="comment-content"><cite class="fn sm black bold"><a href="#"></a></cite><p style="width:100%;">'+comment+'</p><div class="comment-meta"><a href="#">'+d+'</a><a href="#"><p style="color:red;">waiting for approval</p></a></div></div></div></li>';
        $( "#commentlist" ).prepend(str);
        }
        
    }
    });
    //alert(a);
    
}
}
function submitReply(commentid)
{
var reply = $("#reply"+commentid).val();    
if(reply == '')
{
alert("Please enter reply");    
}

else
{
    var data={commentid:commentid, reply:reply,type:'reply'};
    $.ajax({type:'POST', url: 'http://companyinfoz.com/comment_save.php', data:data, success: function(response)
    {
        if(response != '')
        {
        
        var d = convertTimestamp(response);
        var str ='<li class="comment"><div class="comment-body"><div class="comment-content"><cite class="fn sm black bold"><a href=""></a></cite><p style="width:100%;">'+reply+'</p><div class="comment-meta"><a href="#">'+d+'</a></div></div></div></li>';
        //var str = '<li class="comment"><div class="comment-body"><div class="comment-content"><cite class="fn sm black bold"><a href="#"></a></cite><p style="width:100%;">'+comment+'</p><div class="comment-meta"><a href="#">'+response+'</a><a href="#">Waiting for approval</a></div></div></div></li>';
        $( "#replysh"+commentid ).prepend(str);
        
        }
        
    }
    });

    //alert(a);
    
}

}
function showreplybox(cmtid)
{
    
        $( "#replyDiv"+cmtid ).show();
    
    
}

</script>
    <!-- Google font -->
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:300,400,700,900' rel='stylesheet' type='text/css'>
    <!-- Css -->
    <link rel="stylesheet" type="text/css" href="http://companyinfoz.com/css/library/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="http://companyinfoz.com/css/library/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="http://companyinfoz.com/css/library/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="http://companyinfoz.com/css/md-font.css">
    <link rel="stylesheet" type="text/css" href="http://companyinfoz.com/css/style.css">
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
 
</head>
<body id="page-top" class="home">

<!-- PAGE WRAP -->
<div id="page-wrap">

  


   


    <!-- HOME SLIDER -->
    <section class="slide" style="background-image: url(http://companyinfoz.com/images/homeslider/bg.jpg)">
        <div class="container">
            <div class="slide-cn" id="slide-home">
                <!-- SLIDE ITEM -->
                <div class="slide-item">
                    <div class="item-inner">
                        <div class="text">
                            <h2>Proud to be in Fortune 500</h2>
                           <!-- <p style="color:#11538c;">And many more coming up</p> -->
                            <!--<div class="group">
                                <a href="#" class="mc-btn btn-style-1">See full features</a>
                            </div>-->
                        </div>

                        <div class="img">
                            <img src="http://companyinfoz.com/images/homeslider/img-thumb.png" alt="">
                        </div>
                    </div>

                </div>  
                <!-- SLIDE ITEM -->     

                <!-- SLIDE ITEM -->
                <div class="slide-item">
                    <div class="item-inner">
                        <div class="text">
                            <h2>Fortune 500 and many more goals</h2>
                            <p></p>
                         <!--   <div class="group">
                                <a href="#" class="mc-btn btn-style-1">See full features</a>
                            </div>-->
                        </div>

                        <div class="img">
                            <img src="http://companyinfoz.com/images/homeslider/img-thumb.png" alt="">
                        </div>

                    </div>  
                </div>  
                <!-- SLIDE ITEM -->  

            </div>
        </div>
    </section>
    <!-- END / HOME SLIDER -->


    <!-- AFTER SLIDER -->
    <!-- END / AFT
    
    
    ER SLIDER -->
    
    <!-- SECTION 1 -->
    <section id="mc-section-1" class="mc-section-1 section">
        <div class="container">
            <div class="row">
                
                <div class="col-md-5">
                    <div class="mc-section-1-content-1"> 
                       <h2 class="big">Contact Us</h2>
                       <p>Bell Info Solutions </p>
                         <p>1400 Shephard Drive </p>
                         <p>Sterling VA 20164</p>
                         <p>Tel: +1-704-771-9349, +1-531-456-2222     Fax: +1-888-777-9999</p>
                       
                     <!--   <a href="#" class="mc-btn btn-style-1">About us</a>-->
                    </div>
                </div>
              </div>
        </div>
    </section>
    <!-- END / SECTION 1 -->
   <!-- FOOTER -->
    <footer id="footer" class="footer">
        

        <div class="second-footer">
            <div class="container">
                <div class="contact">
                    <div class="email">
                     
                        <a href="">About Us</a>
                         
                    </div>
                    
                    
                </div>
                <p class="copyright">Copyright © <script>document.write(new Date().getFullYear())</script> All Rights Reserved by <a href="">bellinfo.com</a></p>
                
            </div>
        </div>
    </footer>    <!-- END / FOOTER -->
</div>
<!-- END / PAGE WRAP -->
    <script type="text/javascript" src="http://companyinfoz.com/js/library/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="http://companyinfoz.com/js/library/bootstrap.min.js"></script>
<script type="text/javascript" src="http://companyinfoz.com/js/library/jquery.owl.carousel.js"></script>
<script type="text/javascript" src="http://companyinfoz.com/js/library/jquery.appear.min.js"></script>
<script type="text/javascript" src="http://companyinfoz.com/js/library/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="http://companyinfoz.com/js/library/jquery.easing.min.js"></script>
<script type="text/javascript" src="http://companyinfoz.com/js/scripts.js"></script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-46306067-1', 'auto');
  ga('send', 'pageview');

</script><!-- Load jQuery -->

</body>
</html>