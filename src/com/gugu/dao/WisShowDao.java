package com.gugu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.gugu.pojo.GgNote;
import com.gugu.util.DbUtil;

public class WisShowDao {
	
	public ArrayList<GgNote> getcomInfo(){
		ArrayList<GgNote> coms=new ArrayList();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT note_id,note_content,note_date,note_like,note_photo  FROM gg_note ORDER BY note_date Desc ";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();
            rs.beforeFirst();
            while(rs.next()) {
            	GgNote com = new GgNote();
            	com.setNoteId(rs.getInt("note_id"));
            	com.setNoteContent(rs.getString("note_content"));
            	com.setNoteDate(rs.getString("note_date"));
            	com.setNoteLike(rs.getInt("note_like"));
            	com.setNotePhoto(rs.getString("note_photo"));
            	coms.add(com);
            }

            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return coms;
	}

}
