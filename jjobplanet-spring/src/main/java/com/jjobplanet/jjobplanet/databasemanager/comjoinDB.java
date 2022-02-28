package com.jjobplanet.jjobplanet.databasemanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;


public class comjoinDB
{

	public String doComjoin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		String cmail = request.getParameter("cmail");
		String cpw  = request.getParameter("cpw");
		String cname = request.getParameter("cname");
		String ccategory  = request.getParameter("ccategory");
		String csize = request.getParameter("csize");
		String ceoname  = request.getParameter("ceoname");
		String cinsurance = request.getParameter("cinsurance");
		String caddress  = request.getParameter("caddress");
		String cnumber = request.getParameter("cnumber");
		String cworkers  = request.getParameter("cworkers");
		String cdate  = request.getParameter("cdate");
		String cmaintask  = request.getParameter("cmaintask");
		String chomepage  = request.getParameter("chomepage");


		String host   = "jdbc:mariadb://cm4ng.iptime.org:3307/jjobplanet?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "user";
		String passwd = "!!User@@";
		
		JSONObject data = new JSONObject();
		
		try(Connection conn =  DriverManager.getConnection(host,userid,passwd);
			Statement stmt = conn.createStatement()) 
		{	
			String sql = "INSERT INTO company (cmail, cpw, cname, csize, ccategory, ceoname, cinsurance, caddress, cnumber, cworkers, cdate,  cmaintask, chomepage) VALUES "
					   + "('" + cmail + "',MD5('" + cpw + "'),'" + cname +"','" + csize +"','" + ccategory +"','" + ceoname +"','" + cinsurance +"','" + caddress +"','" + cnumber +"','" + cworkers +"','" + cdate +"','" + cmaintask +"','" + chomepage +"')";
			stmt.executeUpdate(sql);
			data.put("result", "OK");			
			
		} catch (Exception e) {
			e.printStackTrace();
			
			data.put("result", "FAIL");
		}

		return data.toJSONString();
	}
}
