package com.gugu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.gugu.pojo.GgNoteCom;
import com.gugu.util.DbUtil;

public class WisComShowDao {
	public ArrayList<GgNoteCom> getcomInfo(int noteId){
		int id = noteId;
		ArrayList<GgNoteCom> coms=new ArrayList();
		DbUtil db=new DbUtil();
        try {
        	String sql="SELECT note_id,note_com_id,note_com_content,note_com_date,note_com_name  FROM gg_note_com WHERE note_id ="+id+ " ORDER BY note_com_date Desc ";
            Connection conn=db.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();
            rs.beforeFirst();
            while(rs.next()) {
            	GgNoteCom com = new GgNoteCom();
            	com.setNoteId(rs.getInt("note_id"));
            	com.setNoteComId(rs.getInt("note_com_id"));
            	com.setNoteComContent(rs.getString("note_com_content"));
            	com.setNoteComDate(rs.getString("note_com_date"));
            	com.setNoteComName(rs.getString("note_com_name"));
            	coms.add(com);
            }

            DbUtil.getClose(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return coms;
	}

}
