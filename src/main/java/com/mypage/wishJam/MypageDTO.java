package com.mypage.wishJam;
import java.io.*;

public class MypageDTO {

	private String homepath;
	private String url = "img/member_profile/";
	private String crpath;

	public String getHomepath() {
		return homepath;
	}

	public void setHomepath(String homepath) {
		this.homepath = homepath;
	}

	public String getUrl() {
		return url;
	}

//	public void setUrl(String url) {
//		this.url = url;
//	}

	public String getCrpath() {
		return crpath;
	}

	public void setCrpath(String crpath) {
		this.crpath = crpath;
	}

	public MypageDTO() {

	}

}
