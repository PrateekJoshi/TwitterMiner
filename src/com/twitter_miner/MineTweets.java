package com.twitter_miner;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import twitter4j.Paging;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;

public class MineTweets  extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String userName=req.getParameter("userName").toString();
		try{
			Twitter twitter = TwitterFactory.getSingleton();
			Paging paging = new Paging(1, 200);
			List<Status> statuses = twitter.getUserTimeline(userName,paging);
			HttpSession session=req.getSession();
			int tweetCount=statuses.size();
			session.setAttribute("tweetCount", Integer.toString(tweetCount));
			session.setAttribute("tweets", statuses);
			
			 Cookie cookie = new Cookie("userName", userName);
			 resp.addCookie(cookie);
			  
			RequestDispatcher rd=req.getRequestDispatcher("display_tweets.jsp");
			rd.forward(req, resp);
			
			}catch(TwitterException  e){
				System.out.println("EXCEPTION "+e.getMessage());
			}
		
	}
}
