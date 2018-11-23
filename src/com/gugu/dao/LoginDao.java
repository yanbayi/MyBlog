package com.gugu.dao;
import com.gugu.util.DbUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoginDao{
	public int check(String userName,String userPassword) {
		DbUtil db=new DbUtil();
	
        try {
            String sql="SELECT user_name,user_password,user_rights"
            		+ " FROM gg_user where user_name="+"'"+userName+"'";
            Connection conn=db.getCon();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            if(rs.next()){
            	if(userPassword.equals(rs.getString("user_password"))){
            		if(rs.getInt("user_rights")==1) {
            			return 1;
            		}
            		else if(rs.getInt("user_rights")==2) {
            			return 2;
            		}
            		else if(rs.getInt("user_rights")==3) {
            			return 3;
            		}
            		else {
            			return 4;
            		}
            	}else {
                	return 4;
                }
            }else {
            	return 4;
            }
          	
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return 4;
	}
	
	
}