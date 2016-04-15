package com.java1234.web;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.java1234.dao.GradeDao;
import com.java1234.dao.StudentDao;
import com.java1234.util.DbUtil;
import com.java1234.util.ResponseUtil;

public class GradeDeleteServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/*DbUtil dbUtil=new DbUtil();
	GradeDao gradeDao=new GradeDao();
	StudentDao studentDao=new StudentDao();*/
	DbUtil dbUtil = new DbUtil();
	GradeDao gradeDao = new GradeDao();
	StudentDao studentDao = new StudentDao();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*String delIds=request.getParameter("delIds");
		Connection con=null;*/
		String delIds = request.getParameter("delIds");
		Connection con = null;
		try{
			/*con=dbUtil.getCon();
			JSONObject result=new JSONObject();
			String str[]=delIds.split(",");*/
			con = dbUtil.getCon();
			JSONObject result = new JSONObject();
			String[] str = delIds.split(",");
			//判断每个要删除的班级下面是否有学生
			for(int i=0;i<str.length;i++){
				boolean f=studentDao.getStudentByGradeId(con, str[i]);
				if(f){
					result.put("errorIndex", i);
					result.put("errorMsg", "班级下面有学生，不能删除！");
					ResponseUtil.write(response, result);
					return;
				}
			}
			//如果班级下面都没学生，则删除班级
			int delNums=gradeDao.gradeDelete(con, delIds);
			if(delNums>0){
				result.put("success", "true");
				//返回实际删除的数目
				result.put("delNums", delNums);
			}else{
				result.put("errorMsg", "删除失败");
			}
			ResponseUtil.write(response, result);
		}catch(Exception e){
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
