package com.jjobplanet.jjobplanet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jjobplanet.jjobplanet.MailService;

import com.jjobplanet.jjobplanet.databasemanager.noticeWriteDB;
import com.jjobplanet.jjobplanet.domain.AccountDao;

import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {

	@GetMapping("/")
	public String index()
	{
		return "index";
	}

	@GetMapping("/company")
	public String company()
	{
		return "company";
	}

	@GetMapping("/company.do")
	public String searchCompany(HttpServletRequest request)
	{
		return "company_info";
	}
	
	@GetMapping("/recruit")
	public String recruit()
	 {
		return "recruit";
	}
	
	@RequestMapping(value = "/search.do", method = RequestMethod.GET)
	public String search(HttpServletRequest request) {
		
		
		String keyword = request.getParameter("key");
		String category = request.getParameter("cat");
		String region = request.getParameter("region");
		String career = request.getParameter("career");
		

		return "search";
	}


	@GetMapping("/default")
	public String default1() 
	{
		return "default";
	}
	@GetMapping("/mypage_company")
	public String mypage_company() 
	{
		return "mypage_company";
	}
	@GetMapping("/passwordchange_company")
	public String passwordchange_company() 
	{
		return "passwordchange_company";
	}
	@GetMapping("/passwordchange")
	public String passwordchange() 
	{
		return "passwordchange";
	}
	@GetMapping("/jobpostinglist")
	public String jobpostinglist() 
	{
		return "jobpostinglist";
	}
	@GetMapping("/recruitment")
	public String recruitment() 
	{
		return "recruitment";
	}
	@GetMapping("/mypage")
	public String mypage() 
	{
		return "mypage";
	}
	@GetMapping("/reviewhistory")
	public String reviewhistory() 
	{
		return "reviewhistory";
	}
	@GetMapping("/writereview")
	public String writereview() 
	{
		return "writereview";
	}
	@GetMapping("/interestedcompany")
	public String interestedcompany() 
	{
		return "interestedcompany";
	}
	@GetMapping("/policy")
	public String policy() {
		return "policy";
	}

	@GetMapping("/privacy")
	public String privacy() {
		return "privacy";
	}

	@GetMapping("/recruitService")
	public String recruitService() {
		return "recruitService";
	}

	@GetMapping("/notice")
	public String notice()
	{
		return "notice";
	}

	@GetMapping("/noticeWrite")
	public String notice_editor() {
		return "noticeWrite";
	}

	@GetMapping("/noticeWrite.do")
	public String writeNotice() {
		return "noticeWrite";
	}

	@GetMapping("/faq")
	public String faq() {
		return "faq";
	}

	@RequestMapping(value="/noticeWriteAction.do", method = RequestMethod.POST)
	public String noticeWriteAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String noticetitle = request.getParameter("noticetitle");
		String noticenote = request.getParameter("noticenote");
		System.out.println("noticetitle= " + noticetitle + " noticenote= " + noticenote);

		noticeWriteDB noticewriteDB = new noticeWriteDB();
		noticewriteDB.doNoticeWrite(request, response);

		return "redirect:/notice";
	}

	@GetMapping("/join")
	public String join() {
		return "join";
	}
	
	@RequestMapping(value = "/joinOk.do", method = RequestMethod.POST)
	public String joinOk(HttpServletRequest request, HttpServletResponse response)
	{
		AccountDao account = new AccountDao();
		boolean result = account.joinoUser(request);

		if(result)
		{
			MailService mailsevrice = new MailService();
		
			if(mailsevrice.sendMail(request.getParameter("umail")))
			{
				System.out.println("메일 전송 성공");
				return "joinOk"; 
			} else { 
				
				System.out.println("메일 전송 실패");	
				return "redirect:/"; 
			}		
		} return "error/500";
	}
	
	@RequestMapping(value = "/joinokCompany.do", method = RequestMethod.POST)
	public String joinOkcompany(HttpServletRequest request, HttpServletResponse response)
	{
				
		AccountDao account = new AccountDao();
		boolean result = account.joinCompany(request);
		
		if(result)
		{
			MailService mailsevrice = new MailService();
		
			if(mailsevrice.sendMail(request.getParameter("umail")))
			{
				System.out.println("메일 전송 성공");
				return "redirect:/joinOk"; 
			} else { 
				
				System.out.println("메일 전송 실패");	
				return "redirect:/"; 
			}		
		} return "error/500";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public void login( HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		AccountDao account = new AccountDao();
		//boolean result = account.login(request);
		String result = account.login(request);
		// ModelAndView view = new ModelAndView();

		// view.setViewName("index");

		// if(result) return view;
		// else return null;

		PrintWriter out = response.getWriter();
		out.print(result);

	}


	@GetMapping("/individualJoin")
	public String individualJoin() {
		return "individualJoin";
	}

	@GetMapping("/companyJoin")
	public String companyJoin() {
		return "companyJoin";
	}
		

	@GetMapping("/loginOk")
	public String loginOk() {
		return "loginOk";
	}

	@GetMapping("/findPassword")
	public String findPassword() {
		return "findPassword";
	}

	@GetMapping("/findPasswordOk")
	public String findPasswordOk() {
		return "findPasswordOk";
	}


	@RequestMapping("/validate.do")
	public void validateEmail(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		AccountDao accountDao = new AccountDao();

		String type = request.getParameter("type");
		String email = request.getParameter("mail");
		Boolean result = accountDao.validateEmail(type, email);

		PrintWriter out = response.getWriter();
		out.print(result);
	}
	
}