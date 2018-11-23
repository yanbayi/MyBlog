package com.gugu.pojo;

import java.util.Date;

public class Ggcom {
	private String UserName;
	private Date ComDate;
	private String ComContent;
	
	public String getUserName() {
        return UserName;
    }

    public void setUserName(String userName) {
    	UserName = userName;
    }
    
    public Date getComDate() {
        return ComDate;
    }

    public void setComDate(Date comDate) {
    	ComDate = comDate;
    }
    public String getComContent() {
        return ComContent;
    }

    public void setComContent(String comContent) {
    	ComContent = comContent;
    }

}
