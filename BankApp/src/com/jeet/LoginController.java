package com.jeet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest x, HttpServletResponse y) {
		try {
	 String cid = x.getParameter("customerid");
		//	int cid = Integer.parseInt(temp);
			String pwd = x.getParameter("password");
			Model m = new Model();
			m.setCustomerid(cid);
			m.setPassword(pwd);
			
			boolean b = m.login();
			if (b == true) {
				HttpSession hs = x.getSession(true);
				hs.setAttribute("NAME", m.getName());
				hs.setAttribute("ACCNO", m.getAccno());
				y.sendRedirect("/BankApp/LoginSuccess.jsp");
			} else {
				y.sendRedirect("/BankApp/LoginFailure.jsp");
			}
             
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
