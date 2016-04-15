package com.principle28.web;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.principle28.dao.UserDao;
import com.principle28.util.DbUtil;
import com.principle28.util.ResponseUtil;

public class UserDeleteServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/*DbUtil dbUtil=new DbUtil();
	UserDao userDao=new UserDao();*/
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
		// String delId=request.getParameter("delId");
		//String delId=request.getParameter("id");
		
		String delId = request.getParameter("delId");
		Connection con = null;
		
		try{
			con = dbUtil.getCon();
			JSONObject result = new JSONObject();
			int delNums = userDao.userDelete(con,delId);		//���ɾ���ɹ��򷵻�ɾ��s����Ŀ
			if(delNums==1){
				result.put("success", "true");
			}else{
				result.put("success", "true");
				result.put("errorMsg", "ɾ��ʧ��");
			}
			ResponseUtil.write(response, result);		//��װ�õķ���
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				dbUtil.closeCon(con);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
}
