package com.twitter_miner;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class TwitterMinerServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
		try {
			rd.forward(req, resp);
		} catch (ServletException e) {
			e.printStackTrace();
		}
	}
}
