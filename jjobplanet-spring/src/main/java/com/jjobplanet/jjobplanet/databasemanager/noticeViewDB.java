package com.jjobplanet.jjobplanet.databasemanager;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;


import org.springframework.web.servlet.mvc.support.RedirectAttributes;

public class noticeViewDB 
{
	public void doViewNotice(HttpServletRequest request,  RedirectAttributes setAttribute) throws ServletException, IOException {
    	
		String noticeno = request.getParameter("noticeno");
		String noticetitle = request.getParameter("noticetitle");
		String noticedate = request.getParameter("noticedate");
		String noticenote = request.getParameter("noticenote");
	
		String host   = "jdbc:mariadb://cm4ng.iptime.org:3307/jjobplanet?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "mskim";
		String passwd = "Sudwhd12!";
		
		
		try(Connection conn =  DriverManager.getConnection(host,userid,passwd);
			Statement stmt = conn.createStatement()) 
		{	
			String sql = "select noticeno, noticetitle, noticedate, noticenote from notice";

			System.out.println("SQL:" + sql);
			ResultSet result = stmt.executeQuery(sql);
		
			noticeno = result.getString("noticeno");
			noticetitle = result.getString("noticetitle");
			noticedate = result.getString("noticedate");
			noticenote = result.getString("noticenote");

			HttpSession session = request.getSession();
			session.setAttribute("noticeno",noticeno);
			session.setAttribute("noticetitle",noticetitle);
			session.setAttribute("noticedate",noticedate);
			session.setAttribute("noticenote",noticenote);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
			
	}
}
