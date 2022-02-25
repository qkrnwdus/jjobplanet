package com.jjobplanet.jjobplanet.databasemanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

public class noticeWriteDB 
{
    public void doNoticeWrite(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    			
		String noticetitle = request.getParameter("noticetitle");
		String noticenote  = request.getParameter("noticenote");
	
		String host   = "jdbc:mariadb://cm4ng.iptime.org:3307/jjobplanet?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "mskim";
		String passwd = "Sudwhd12!";
		
		PrintWriter out = response.getWriter();
		JSONObject object = new JSONObject();
		
		try(Connection conn =  DriverManager.getConnection(host,userid,passwd);
			Statement stmt = conn.createStatement()) 
		{	
			String sql = "insert into notice(noticetitle, noticenote) values('" + noticetitle + "', '" + noticenote + "')";
			stmt.executeUpdate(sql);
			object.put("result", "OK");			
			
		} catch (Exception e) {
			e.printStackTrace();
			
			 object.put("result", "FAIL");
		}
	}
}
