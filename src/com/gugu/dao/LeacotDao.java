package com.gugu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.gugu.pojo.Ggcom;
import com.gugu.util.DbUtil;

public class LeacotDao {
	public boolean addLeacot(Ggcom com){
        String username=com.getUserName();
        String usercontent=com.getComContent();
        
        DbUtil db=new DbUtil();
        try {
            String sql="INSERT INTO gg_comment(user_name,com_content) VALUES (?,?)";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, usercontent);
           
            ps.executeUpdate();
            
            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
	
	public boolean delete(int id) {
		DbUtil db=new DbUtil();
		try {
            String sql="DELETE FROM gg_comment WHERE com_id="+id;
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