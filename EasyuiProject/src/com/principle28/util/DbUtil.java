package com.principle28.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbUtil {

	/*private String dbUrl="jdbc:mysql://localhost:3306/db_easyui";
	private String dbUserName="root";
	private String dbPassword="123456";
	private String jdbcName="com.mysql.jdbc.Driver";*/
	
	private String jdbcName="com.mysql.jdbc.Driver";	//���ص�������
	private String dbUrl="jdbc:mysql://localhost:3306/db_easyui";	//��ȡ���ӵĵ�ַ
	private String dbUserName="root";		//���ݿ�ĵ�¼�˻�
	private String dbPassword="123456";		//��¼����
	
	//��ȡ���ݿ�����
	public Connection getCon()throws Exception{
		Class.forName(jdbcName);		//����������
		Connection con=DriverManager.getConnection(dbUrl,dbUserName,dbPassword);		//��ȡ����
		return con;
	}
	
	/*public void closeCon(Connection con)throws Exception{
		if(con!=null){
			con.close();
		}
	}*/
	
	//�ر�����
	public void closeCon(Connection con)throws Exception{
		if(con!=null){
			con.close();
		}
	}
}
