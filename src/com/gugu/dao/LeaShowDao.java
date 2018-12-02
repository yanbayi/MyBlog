package com.gugu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.gugu.pojo.Ggcom;
import com.gugu.util.DbUtil;

public class LeaShowDao {
	
	public ArrayList<Ggcom> getcomInfo(){
		ArrayList<Ggcom> coms=new ArrayList<Ggcom>();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT user_name,com_content,com_date,com_id  FROM gg_comment ORDER BY com_date Desc ";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();
            rs.beforeFirst();
            while(rs.next()) {
            	Ggcom com = new Ggcom();
            	com.setComContent(rs.getString("com_content"));
            	com.setComDate(rs.getDate("com_date"));
            	com.setUserName(rs.getString("user_name"));
            	com.setComId(rs.getInt("com_id"));
            	coms.add(com);
            }

            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return coms;
	}

}