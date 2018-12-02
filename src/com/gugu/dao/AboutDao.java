package com.gugu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.gugu.pojo.GgUser;
import com.gugu.util.DbUtil;

public class AboutDao {
	public GgUser getUserInfo(String userName){
		String username = userName;
		GgUser user = new GgUser();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT user_name,user_sex,user_telephone_numbuter,user_qq,user_hobby,user_birthday,user_email,user_age,user_wechat  FROM gg_user where user_name= "+"'"+username+"'";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
            user.setUserName(rs.getString("user_name"));
            user.setBirthday(rs.getDate("user_birthday"));
            user.setUserEmail(rs.getString("user_email"));
            user.setUserAge(rs.getInt("user_age"));
            user.setUserTel(rs.getInt("user_telephone_numbuter"));
            user.setUserSex(rs.getString("user_sex"));
            user.setUserQq(rs.getInt("user_qq"));
            user.setUserWeChat(rs.getString("user_wechat"));
            user.setUserHobby(rs.getString("user_hobby"));
            }

            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
	}
	
	public GgUser updateUserInfo(GgUser user){
		DbUtil db=new DbUtil();
        try {
        	String sql="UPDATE gg_user SET user_sex='"+user.getUserSex()+"',user_age="+user.getUserAge()+",user_hobby='"+user.getUserHobby()+"'  WHERE user_id=1";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.executeUpdate();

            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
	}
	
	public ArrayList<GgUser> getUsers(){
		ArrayList<GgUser> users=new ArrayList<GgUser>();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT user_id,user_name,user_email,user_rights,user_registration_time  FROM gg_user";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();
            rs.beforeFirst();
            while(rs.next()) {
            	GgUser user = new GgUser();
            	user.setUserId(rs.getLong("user_id"));
            	user.setUserName(rs.getString("user_name"));
            	user.setUserEmail(rs.getString("user_email"));
            	user.setUserRights(rs.getString("user_rights"));
            	user.setUserRegistrationTime(rs.getDate("user_registration_time"));
            	users.add(user);
            }

            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
	}

}
