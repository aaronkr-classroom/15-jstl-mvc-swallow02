package ch18.com.controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import ch18.com.model.LoginBean;

public class ControllerServlet extends HttpServlet {
      private static final long serialVerionUID = 1L;
      protected void doPost(HttpServletRequest req,HttpServletResponse res)
          throws ServletException,IOException{
    	  res.setContentType("text/html; charset=utf-8");
    	  
    	  String id =req.getParameter("id");
    	  String pw = req.getParameter("password");
    	  
    	  LoginBean bean = new LoginBean();
    	  bean.setId(id);
    	  bean.setPassword(pw);
    	  req.setAttribute("bean", bean);
    	  
    	  boolean status = bean.validate();
    	  
    	  if(status) {
    		  RequestDispatcher rd=req.getRequestDispatcher("mvc_success.jsp");
    		  rd.forward(req, res);
    	  } else {
    		  RequestDispatcher rd=req.getRequestDispatcher("mvc_error.jsp");
    		  rd.forward(req, res);
    	  }
      }
      
      @Override
      protected void doGet(HttpServletRequest req,HttpServletResponse res)
    		  throws ServletException,IOException {
    	  doPost(req,res);
      }
}
