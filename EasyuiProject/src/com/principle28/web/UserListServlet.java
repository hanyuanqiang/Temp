package com.principle28.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.principle28.dao.UserDao;
import com.principle28.model.PageBean;
import com.principle28.util.DbUtil;
import com.principle28.util.JsonUtil;
import com.principle28.util.ResponseUtil;

public class UserListServlet extends HttpServlet{

	/**
	 *���ݴ�ǰ�˴����ĵ�ǰҳ��ÿҳ��ʾ����Ŀ��
	 *��ȡ���ݿ��е��û��б�
	 */
	private static final long serialVersionUID = 1L;
	DbUtil dbUtil=new DbUtil();
	UserDao userDao=new UserDao();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*String page=request.getParameter("page");
		String rows=request.getParameter("rows");*/
		String page = request.getParameter("page");
		String rows = request.getParameter("rows");
		
		PageBean pageBean = new PageBean(Integer.parseInt(page),Integer.parseInt(rows));
		
		Connection con=null;
		try {
			con = dbUtil.getCon();
			JSONObject result  = new JSONObject();
			ResultSet resultSet = userDao.userList(con, pageBean);		//	��ȡ�����ض�������ѯ�Ľ��
			JSONArray jsonArray = JsonUtil.formatRsToJsonArray(resultSet);		//�Ѳ�ѯ���ת��ΪJSONArray��ʽ������
			int total  = userDao.userCount(con);		//��ȡ���ݿ���user���м�¼��
			result.put("rows", jsonArray);		//��jsonarray����ǰ����ʾ�ڱ����
			result.put("total", total);		//���ܼ�¼��Ҳ����
			ResponseUtil.write(response, result);		//	��ǰ�����
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
