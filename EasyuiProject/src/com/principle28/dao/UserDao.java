package com.principle28.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.principle28.model.PageBean;
import com.principle28.model.User;


public class UserDao {

	/**
	 * 获取用户列表
	 * @param con
	 * @param pageBean
	 * @return
	 * @throws Exception
	 */
	public ResultSet userList(Connection con,PageBean pageBean)throws Exception{
		String sql = "select * from t_user limit ?,?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, pageBean.getStart());
		pstmt.setInt(2, pageBean.getRows());
		return pstmt.executeQuery();
	}
	
	/**
	 * 获取用户总记录数
	 * @param con
	 * @return
	 * @throws Exception
	 */
	public int userCount(Connection con)throws Exception{
		String sql = "select count(*) as total from t_user";
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
			return rs.getInt("total");	//跟sql语句中的as total相关
		}else{
			return 0;
		}
	}
	
	/**
	 * 删除一条用户信息
	 * @param con
	 * @param delId
	 * @return
	 * @throws Exception
	 */
	public int userDelete(Connection con,String delId)throws Exception{
		String sql = "delete from t_user where id=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, delId);
		return pstmt.executeUpdate();
		
	}
	
	/**
	 * 增加一条用户信息
	 * @param con
	 * @param user
	 * @return
	 * @throws Exception
	 */
	public int userAdd(Connection con,User user)throws Exception{
		String sql = "insert into t_user values(null,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user.getName());
		pstmt.setString(2, user.getPhone());
		pstmt.setString(3, user.getEmail());
		pstmt.setString(4, user.getQq());
		return pstmt.executeUpdate();
	}
	
	/**
	 * 修改当前用户信息
	 * @param con
	 * @param user
	 * @return
	 * @throws Exception
	 */
	public int userModify(Connection con,User user)throws Exception{
		String sql="update t_user set name=?,phone=?,email=?,qq=? where id=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, user.getName());
		pstmt.setString(2, user.getPhone());
		pstmt.setString(3, user.getEmail());
		pstmt.setString(4, user.getQq());
		pstmt.setInt(5,user.getId());
		return pstmt.executeUpdate();
	}
}
