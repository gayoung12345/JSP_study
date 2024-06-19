package com.dto;
import java.io.Serializable;

public class MemberBean implements java.io.Serializable{
	
	// member
	private int id;			// 접근제어자 private
	private String name;
	
	// default constructor
	public MemberBean() {
		
	}

	// Getter(), Setter()
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
