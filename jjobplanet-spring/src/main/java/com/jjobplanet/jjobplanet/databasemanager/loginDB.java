package com.jjobplanet.jjobplanet.databasemanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

public class loginDB
{

	public String doLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		String type = request.getParameter("type");
		String umail = request.getParameter("umail");
		String upw  = request.getParameter("upw");
	
		String host   = "jdbc:mariadb://cm4ng.iptime.org:3307/jjobplanet?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "user";
		String passwd = "!!User@@";

		JSONObject data = new JSONObject();
		
		try(Connection conn =  DriverManager.getConnection(host,userid,passwd);
			Statement stmt = conn.createStatement()) 
		{	
			String sql; 

			if(type.equals("user")) { 
				sql = "SELECT uno, umail FROM user";
				sql += " WHERE umail = '" + umail + "' ";
				sql += " AND upw = MD5('" + upw + "') ";
				sql += " AND uretire = 'N' ";
			} else {
				sql = "SELECT cno, cmail FROM company";
				sql += " WHERE cmail = '" + umail + "' ";
				sql += " AND cpw = MD5('" + upw + "') ";
				sql += " AND cretire = 'N' ";
			}

			
			

			ResultSet result = stmt.executeQuery(sql);
			if(result.next())
			{					

				data.put("result", "SUCCESS");
				HttpSession session = request.getSession();
				
				if(type.equals("user")) session.setAttribute("no", result.getString("uno"));
				else session.setAttribute("no", result.getString("cno"));
				
			} else {
				data.put("result", "FAIL");
			}	
		} catch (Exception e) {
			e.printStackTrace();
		}

		return data.toJSONString();
			
	}
}
