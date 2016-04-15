package com.principle28.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.principle28.model.PageBean;
import com.principle28.model.User;


public class UserDao {

	/**
	 * ��ȡ�û��б�
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
	 * ��ȡ�û��ܼ�¼��
	 * @param con
	 * @return
	 * @throws Exception
	 */
	public int userCount(Connection con)throws Exception{
		String sql = "select count(*) as total from t_user";
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
			return rs.getInt("total");	//��sql����е�as total���
		}else{
			return 0;
		}
	}
	
	/**
	 * ɾ��һ���û���Ϣ
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
	 * ����һ���û���Ϣ
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
	 * �޸ĵ�ǰ�û���Ϣ
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
