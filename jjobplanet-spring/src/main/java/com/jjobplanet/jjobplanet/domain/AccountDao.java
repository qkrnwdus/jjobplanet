package com.jjobplanet.jjobplanet.domain;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;


public class AccountDao {

    private final String host   = "jdbc:mariadb://cm4ng.iptime.org:3307/jjobplanet?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
    private final String userid = "user";
    private final String passwd = "!!User@@";

    // public boolean login(HttpServletRequest request)
    // {
    //     String type = request.getParameter("category");
    //     String umail = request.getParameter("umail");
    //     String upw  = request.getParameter("upw");

    //     try(Connection conn =  DriverManager.getConnection(host,userid,passwd);
    //         Statement stmt = conn.createStatement()) 
    //     {	
    //         String sql; 

    //         if(type.equals("user")) { 
    //             sql = "SELECT uno, umail FROM user";
    //             sql += " WHERE umail = '" + umail + "' ";
    //             sql += " AND upw = MD5('" + upw + "') ";
    //             sql += " AND uretire = 'N' ";
    //         } else {
    //             sql = "SELECT cno, cmail FROM company";
    //             sql += " WHERE cmail = '" + umail + "' ";
    //             sql += " AND cpw = MD5('" + upw + "') ";
    //             sql += " AND cretire = 'N' ";
    //         }

    //         ResultSet result = stmt.executeQuery(sql);
    //         if(result.next())
    //         {					
    //             HttpSession session = request.getSession();
                
    //             if(type.equals("user")) session.setAttribute("no", result.getString("uno"));
    //             else session.setAttribute("no", result.getString("cno"));
    //         } 

    //         return true;
    //     } catch (Exception e) {
    //         e.printStackTrace();

    //         return false;
    //     }
    // }

    public String login(HttpServletRequest request)
    {

        
        Map<String, String> data = new HashMap<>();
        String type = request.getParameter("type");
        String umail = request.getParameter("umail");
        String upw  = request.getParameter("upw");

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
                HttpSession session = request.getSession();
                
                if(type.equals("user")) session.setAttribute("no", result.getString("uno"));
                else session.setAttribute("no", result.getString("cno"));
                data.put("result", "SUCCESS");
            } else data.put("result", "FAIL");

        } catch (Exception e) {
            e.printStackTrace();

            //return false;
            data.put("result", "FAIL");
        }

        return new JSONObject(data).toJSONString();
    }

    public boolean joinoUser(HttpServletRequest request)
    {
        String umail = request.getParameter("umail");
		String upw  = request.getParameter("upw");
		
		try(Connection conn =  DriverManager.getConnection(host,userid,passwd);
			Statement stmt = conn.createStatement()) 
		{	
			String sql = "insert into user (umail, upw) values "
					   + "('" + umail + "',md5('" + upw + "'))";
			stmt.executeUpdate(sql);
			
			return true;
		} catch (Exception e) { return false; }
    }

    public boolean joinCompany(HttpServletRequest request)
    {
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
		

		
		try(Connection conn =  DriverManager.getConnection(host,userid,passwd);
			Statement stmt = conn.createStatement()) 
		{	
			String sql = "INSERT INTO company (cmail, cpw, cname, csize, ccategory, ceoname, cinsurance, caddress, cnumber, cworkers, cdate,  cmaintask, chomepage) VALUES "
					   + "('" + cmail + "',MD5('" + cpw + "'),'" + cname +"','" + csize +"','" + ccategory +"','" + ceoname +"','" + cinsurance +"','" + caddress +"','" + cnumber +"','" + cworkers +"','" + cdate +"','" + cmaintask +"','" + chomepage +"')";
			stmt.executeUpdate(sql);

            return true;
			
		} catch (Exception e) { return false; }

    }

    public boolean logout()
    {
        return false;
    }


    public boolean join()
    {
        return false;
    }


}
