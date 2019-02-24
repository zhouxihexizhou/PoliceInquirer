package DB;

import java.util.*;
import java.sql.*;

public class Sign {

	private String no;
	private String  pasw;
	private String age;
	private String tele;
	private Connection con=null;
	private Statement sql=null;
	private ResultSet rs=null;
	private String condition;
	public Sign(String no, String pasw, String age, String tele) {
		super();
		this.no = no;
		this.pasw = pasw;
		this.age = age;
		this.tele = tele;
	}
	
	public Sign() {
		super();
	}
	public boolean createCon()
	{
		try{
			//加载驱动
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			//驱动管理器获取数据库连接
			String dbUrl="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=assignment";
			String user="sa";
	        String password="sa";
			con = DriverManager.getConnection(dbUrl, user, password);
			
			return true;
		}catch(Exception e){
		    e.printStackTrace();
		}
		return false;
	}
	
	public boolean queryUp()
	{
		try{
			condition="select * from [assignment].[dbo].[signUp] WHERE no = '"+this.no+"'";
			sql=con.createStatement();
			ResultSet rs=sql.executeQuery(condition);
			if(rs.next()) return true;
		}catch(Exception e){
		    e.printStackTrace();
		}
		return false;
	}
	public boolean queryIn()
	{
		try{
			condition="select * from [assignment].[dbo].[signUp] WHERE no = "+"'"+this.no+"' and pasw='"+this.pasw+"'";
			sql=con.createStatement();
			ResultSet rs=sql.executeQuery(condition);
			if(rs.next()) return true;
		}catch(Exception e){
		    e.printStackTrace();
		}
		return false;
	}
	public boolean closeCon()
	{
		try{
			if(con!=null) con.close();
			return true;
		}catch(Exception e){
		    e.printStackTrace();
		}
		return false;
	}
}
