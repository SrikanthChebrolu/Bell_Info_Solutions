package com.bellinfo.beans;

import java.io.Serializable;

public class RequestAProxy implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5095898222847740200L;

	private String name;
	private String subject;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	@Override
	public String toString() {
		return "RequestAProxy [name=" + name + ", subject=" + subject + "]";
	}

	public RequestAProxy(String name, String subject) {
		super();
		this.name = name;
		this.subject = subject;
	}

	public RequestAProxy() {
		super();
	}

}
