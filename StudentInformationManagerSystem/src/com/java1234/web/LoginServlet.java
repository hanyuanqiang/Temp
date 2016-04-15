package com.java1234.web;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java1234.dao.UserDao;
import com.java1234.model.User;
import com.java1234.util.DbUtil;
import com.java1234.util.StringUtil;

public class LoginServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	DbUtil dbUtil = new DbUtil();
	UserDao userDao = new UserDao();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//获取前台传过来的用户名和密码
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		
		//服务器跳转到登录页面时把用户输入的用户名和密码传回去，提高用户体验
		request.setAttribute("userName", userName);
		request.setAttribute("password", password);
		
		//检验用户名和密码是否为空
		if(StringUtil.isEmpty(userName)||StringUtil.isEmpty(password)){
			request.setAttribute("error", "用户名或密码为空！");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			return;
		}
		
		
		User user=new User(userName,password);
		Connection con=null;
		try {
			con=dbUtil.getCon();
			
			//如果用户名或密码不正确的话返回的是null
			User currentUser=userDao.login(con, user);
			if(currentUser==null){
				//返回错误提醒信息
				request.setAttribute("error", "用户名或密码错误！");
				// 服务器跳转
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}else{
				//如果用户名和密码都正确，则跳到主页
				// 获取Session
				HttpSession session=request.getSession();
				//把当前用户信息存储在session中
				session.setAttribute("currentUser", currentUser);
				// 客户端跳转
				response.sendRedirect("main.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			//关闭数据库连接
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}

	
}
