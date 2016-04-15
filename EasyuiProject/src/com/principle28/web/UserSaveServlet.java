package com.principle28.web;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.principle28.dao.UserDao;
import com.principle28.model.User;
import com.principle28.util.DbUtil;
import com.principle28.util.ResponseUtil;
import com.principle28.util.StringUtil;

public class UserSaveServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	DbUtil dbUtil=new DbUtil();
	UserDao userDao=new UserDao();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String qq=request.getParameter("qq");
		String id=request.getParameter("id");
		
		User user=new User(name, phone, email, qq);
		//如果从前端传过来了id参数，就把id设置进user里面去
		if(StringUtil.isNotEmpty(id)){
			user.setId(Integer.parseInt(id));
		}
		
		Connection con=null;
		try {
			int saveNums=0;
			con=dbUtil.getCon();
			JSONObject result=new JSONObject();
			
			//如果id不为空，则表示进行修改操作，否则是进行添加操作
			if(StringUtil.isNotEmpty(id)){
				saveNums=userDao.userModify(con, user);
			}else{
				saveNums=userDao.userAdd(con, user);
			}
			if(saveNums==1){
				result.put("success", "true");
			}else{
				result.put("success", "true");
				result.put("errorMsg", "保存失败");
			}
			result.put("data", user);
			ResponseUtil.write(response, result);
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
