package com.jjobplanet.jjobplanet.databasemanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.JsonObject;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

public class noticeViewDB 
{
	public List<String> doViewNotice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		String noticeno = request.getParameter("noticeno");
		String noticetitle = request.getParameter("noticetitle");
		String noticedate = request.getParameter("noticedate");
		String noticenote = request.getParameter("noticenote");
	
		String host   = "jdbc:mariadb://cm4ng.iptime.org:3307/jjobplanet?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "mskim";
		String passwd = "Sudwhd12!";
		List<String> noticeList = new ArrayList<>();
		
		try(Connection conn =  DriverManager.getConnection(host,userid,passwd);
			Statement stmt = conn.createStatement()) 
		{	
			String sql = "select * from notice";

			System.out.println("SQL:" + sql);
			ResultSet result = stmt.executeQuery(sql);

			while(result.next())
			{
				noticeno = result.getString("noticeno");
				noticetitle = result.getString("noticetitle");
				noticedate = result.getString("noticedate");
				noticenote = result.getString("noticenote");

				HttpSession session = request.getSession();
				session.setAttribute("noticeno",noticeno);
				session.setAttribute("noticetitle",noticetitle);
				session.setAttribute("noticedate",noticedate);
				session.setAttribute("noticenote",noticenote);

				
				// add() method
				noticeList.add(noticeno);
				noticeList.add(noticetitle);
				noticeList.add(noticedate);
				noticeList.add(noticenote);

				//session.setAttribute("noticeList", noticeList);


				
			}

			// System.out.println(noticeList);
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return noticeList;
			
	}
}
