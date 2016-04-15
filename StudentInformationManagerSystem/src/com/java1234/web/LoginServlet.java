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
		//��ȡǰ̨���������û���������
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		
		//��������ת����¼ҳ��ʱ���û�������û��������봫��ȥ������û�����
		request.setAttribute("userName", userName);
		request.setAttribute("password", password);
		
		//�����û����������Ƿ�Ϊ��
		if(StringUtil.isEmpty(userName)||StringUtil.isEmpty(password)){
			request.setAttribute("error", "�û���������Ϊ�գ�");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			return;
		}
		
		
		User user=new User(userName,password);
		Connection con=null;
		try {
			con=dbUtil.getCon();
			
			//����û��������벻��ȷ�Ļ����ص���null
			User currentUser=userDao.login(con, user);
			if(currentUser==null){
				//���ش���������Ϣ
				request.setAttribute("error", "�û������������");
				// ��������ת
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}else{
				//����û��������붼��ȷ����������ҳ
				// ��ȡSession
				HttpSession session=request.getSession();
				//�ѵ�ǰ�û���Ϣ�洢��session��
				session.setAttribute("currentUser", currentUser);
				// �ͻ�����ת
				response.sendRedirect("main.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			//�ر����ݿ�����
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}

	
}
