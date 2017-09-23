
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="col-md-8">
<div ng-app class="text-center"  style="padding:50px 0">


	Stickey Notes
	<form ng-controller="FrmController" >
		<textarea ng-model="txtcomment" placeholder="Your Comment"
			style='width: 550px'></textarea>
			
		<button ng-click='btn_add();' style='margin-top: 10px;'> write a Post</button>

		<h4>Board</h4>
		<ul>
			<li ng-repeat="comnt in comment">{{ comnt }} <a
				style="float: right;" href="" ng-click="remItem($index)">x</a></li>
		</ul>
	</form>
</div>
</div>
<script type="text/javascript">
            function FrmController($scope) {
                $scope.comment = [];
                $scope.btn_add = function() {
                    if($scope.txtcomment !=''){
                    $scope.comment.push($scope.txtcomment);
                    $scope.txtcomment = "";
                    }
                }
 
                $scope.remItem = function($index) {
                    $scope.comment.splice($index, 1);
                }
            }
        </script>