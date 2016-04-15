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
	 *根据从前端传来的当前页和每页显示的数目来
	 *获取数据库中的用户列表
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
			ResultSet resultSet = userDao.userList(con, pageBean);		//	获取按照特定条件查询的结果
			JSONArray jsonArray = JsonUtil.formatRsToJsonArray(resultSet);		//把查询结果转换为JSONArray格式的数据
			int total  = userDao.userCount(con);		//获取数据库中user的中记录数
			result.put("rows", jsonArray);		//把jsonarray传回前端显示在表格中
			result.put("total", total);		//把总记录数也返回
			ResponseUtil.write(response, result);		//	向前端输出
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
