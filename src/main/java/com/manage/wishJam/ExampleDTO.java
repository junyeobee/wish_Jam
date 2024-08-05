package com.manage.wishJam;

public class ExampleDTO {
	private String g_name;
	private int g_point;
	
	public ExampleDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public ExampleDTO(String g_name, int g_point) {
		this.g_name = g_name;
		this.g_point = g_point;
	}

	public String getG_name() {
		return g_name;
	}

	public void setG_name(String g_name) {
		this.g_name = g_name;
	}

	public int getG_point() {
		return g_point;
	}

	public void setG_point(int g_point) {
		this.g_point = g_point;
	}
	
}
