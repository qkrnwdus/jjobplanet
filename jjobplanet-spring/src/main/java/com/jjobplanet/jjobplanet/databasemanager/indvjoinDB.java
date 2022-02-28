package com.jjobplanet.jjobplanet.databasemanager;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;


public class indvjoinDB
{

	public boolean doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	

		
		String umail = request.getParameter("umail");
		String upw  = request.getParameter("upw");
	
		String host   = "jdbc:mariadb://cm4ng.iptime.org:3307/jjobplanet?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "user";
		String passwd = "!!User@@";
		
		JSONObject object = new JSONObject();
		
		try(Connection conn =  DriverManager.getConnection(host,userid,passwd);
			Statement stmt = conn.createStatement()) 
		{	
			String sql = "insert into user (umail, upw) values "
					   + "('" + umail + "',md5('" + upw + "'))";
			stmt.executeUpdate(sql);
			object.put("result", "OK");	
			
			return true;
			
			
		} catch (Exception e) {
			//e.printStackTrace();
			
			object.put("result", "FAIL");

			return false;
		}


		//return object.toJSONString();
	}
}
