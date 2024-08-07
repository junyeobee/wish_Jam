package com.manage.wishJam;

import java.io.*;  
import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyFileRenamePolicy implements FileRenamePolicy {  
    private String userId;  // 사용자 ID

    // 생성자 또는 설정 메서드를 통해 userId를 설정
    public MyFileRenamePolicy(String userId) {
        this.userId = userId;
    }

    public File rename(File f) {
        // 파일 이름을 사용자 ID로 설정
        String name = f.getName();
        String ext = null;

        int dot = name.lastIndexOf(".");  
        if (dot != -1) {  
            ext = name.substring(dot);  // 확장자 포함
        } else {  
            ext = "";  
        }  

        // 사용자 ID를 파일 이름으로 사용
        System.out.println(ext);
        String newName = userId + ".jpg";
        File newFile = new File(f.getParent(), newName);

        // 파일이 이미 존재하면 덮어쓰기
        if (newFile.exists()) {
            return newFile;
        }

        return new File(f.getParent(), newName);
    }
}
