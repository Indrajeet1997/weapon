package com.jeet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.net.httpserver.HttpServer;

public abstract class BalanceController extends HttpServlet {

	public void service(HttpServletRequest x, HttpServletResponse y) {
		try {
			HttpSession hs = x.getSession();
			int accno = (int) hs.getAttribute("ACCNO");
			Model m = new Model();
			m.setAccno(accno);
			boolean b = m.checkBalance();
			if (b == true) {
				hs.setAttribute("BALANCE", m.getBalance());
				y.sendRedirect("/BankApp/BalanceSuccess.jsp");

			} else {
				y.sendRedirect("/BankApp/BalanceFailure.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
