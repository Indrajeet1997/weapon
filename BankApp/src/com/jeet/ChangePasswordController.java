package com.jeet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ChangePasswordController extends HttpServlet {
	public void service(HttpServletRequest x, HttpServletResponse y) {
		try {
			String op = x.getParameter("op");
			String np = x.getParameter("np");
			String cnp = x.getParameter("cnp");
			HttpSession hs = x.getSession();
			int accno = (int) hs.getAttribute("ACCNO");
			if (np.equals(cnp) == true) {
				Model m = new Model();
				m.setNp(np);
				m.setAccno(accno);
				boolean b = m.changePassword();
				if (b == true) {
					y.sendRedirect("/BankApp/CPSuccess.jsp");
				} else {
					y.sendRedirect("/BankApp/CPFailure.jsp");
				}
			} else {
				y.sendRedirect("/BankApp/CPError.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

}
