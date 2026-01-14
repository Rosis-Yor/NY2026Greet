package com.year.y2026;


import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.year.y2026.dao.CookPot;
import com.year.y2026.model.YearMonthMode;

/**
 * Servlet implementation class GetAlienController
 */
public class CookPotController extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String month = request.getParameter("month");
		String mode = request.getParameter("mode");
		/* test pair */
		// String month = "November";
		// String mode = "project";
		
		
		
		CookPot ovenDB  = new CookPot();
		YearMonthMode greet01 = ovenDB.cookDish(month, mode);
		
		HttpSession session = request.getSession();
		session.setAttribute("yearmonthmode", greet01);
		
		response.sendRedirect("ShowGreet.jsp");
	}
}