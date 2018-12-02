package com.gugu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.gugu.pojo.GgUser;
import com.gugu.util.DbUtil;

public class ActiveDao {
	public boolean addUser(GgUser user){
        String username=user.getUserName();
        String userpassword=user.getUserPassword();
        String useremail=user.getUserEmail();
        String userrights="1";
        
        DbUtil db=new DbUtil();
        try {
            String sql="INSERT INTO gg_user(user_name,user_password,user_email,user_rights) VALUES (?,?,?,?)";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, userpassword);
            ps.setString(3, useremail);
            ps.setString(4, userrights);
           
            ps.executeUpdate();
            
            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;

    }
	public boolean forbiden(int userid) {
		DbUtil db=new DbUtil();
		try {
        	String sql="UPDATE gg_user SET user_rights=3  WHERE user_id="+userid;
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.executeUpdate();

            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
		return true;
	}
}
