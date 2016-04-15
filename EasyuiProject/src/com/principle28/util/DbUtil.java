package com.principle28.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbUtil {

	/*private String dbUrl="jdbc:mysql://localhost:3306/db_easyui";
	private String dbUserName="root";
	private String dbPassword="123456";
	private String jdbcName="com.mysql.jdbc.Driver";*/
	
	private String jdbcName="com.mysql.jdbc.Driver";	//加载的驱动包
	private String dbUrl="jdbc:mysql://localhost:3306/db_easyui";	//获取连接的地址
	private String dbUserName="root";		//数据库的登录账户
	private String dbPassword="123456";		//登录密码
	
	//获取数据库连接
	public Connection getCon()throws Exception{
		Class.forName(jdbcName);		//加载驱动包
		Connection con=DriverManager.getConnection(dbUrl,dbUserName,dbPassword);		//获取连接
		return con;
	}
	
	/*public void closeCon(Connection con)throws Exception{
		if(con!=null){
			con.close();
		}
	}*/
	
	//关闭连接
	public void closeCon(Connection con)throws Exception{
		if(con!=null){
			con.close();
		}
	}
}
