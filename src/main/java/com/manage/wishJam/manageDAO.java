package com.manage.wishJam;
import java.io.*;

public class manageDAO {
	//1. 실제 파일 및 폴더가 있는 절대 경로
	private String homePath;
	//4. 공통경로
	private String url = "img/profile/";
	
	public String getHomePath() {
		return homePath;
	}
	public void setHomePath(String homePath) {
		this.homePath = homePath;
	}
	public String getUrl() {
		return url;
	}
	public manageDAO() {
	}
	
}
