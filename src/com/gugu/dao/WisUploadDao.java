package com.gugu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.gugu.pojo.GgNote;
import com.gugu.util.DbUtil;

public class WisUploadDao {
	public boolean addwis(GgNote note) {
		
		String content = note.getNoteContent();
		String notePhoto = note.getNotePhoto();
		DbUtil db=new DbUtil();
        try {
            String sql="INSERT INTO gg_note(note_content,note_photo) VALUES (?,?)";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1, content);
            ps.setString(2, notePhoto);
           
            ps.executeUpdate();
            
            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
	}

}
