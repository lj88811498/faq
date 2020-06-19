package com.github.edu.modular.edu.util;


import org.springframework.stereotype.Component;

import java.sql.*;

/**
 * 数据库底层操作工具类
 * 
 */
@Component
public class DBUtil2 {
	private static DBUtil2 instance=null;
	private static Connection conn = null;// 连接对象
	PreparedStatement ps = null;// 预编译语句对象
	ResultSet rs = null;// 结果集
	CallableStatement cs=null;//调用存储过程的语句对象
	//Oracle连接数据库参数
	private static String url="jdbc:oracle:thin:@127.0.0.1:1521:orcl";
	private static String UserName="scott";
	private static String PassWord="tiger";
	private static String Driver="oracle.jdbc.driver.OracleDriver";
	//sql server2008
	private static final String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static final String conStr = "jdbc:sqlserver://localhost:1433;DataBaseName=db45";
	private static final String username = "sa";
	private static final String pwd = "";
	//mysql
	private static final String mdriver = "com.mysql.jdbc.Driver";
	private static final String mconStr = "jdbc:mysql://localhost:3306/mp3?useSSL=false";
	//static final String mconStr2 = "jdbc:mysql://47.105.52.119:3306/mp3?useSSL=false&useUnicode=true&characterEncoding=utf-8";
	private static final String mconStr2 = "jdbc:mysql://47.104.162.57:3306/mp3?useSSL=false&useUnicode=true&characterEncoding=utf-8";
	private static final String mconStr3 = "jdbc:mysql://47.105.81.53:3306/mp3?useSSL=false&useUnicode=true&characterEncoding=utf-8";
	private static final String musername = "root";


	private static   String mconStr4 = "jdbc:mysql://172.16.0.181:3307/information_schema?useSSL=false&useUnicode=true&characterEncoding=utf-8";
	private static   String musername4 = "yangmao";
	//static final String mpwd = "0926";
	private static final String mpwd = "root";
	private static final String mpwd3 = "0926";
	private static   String mpwd4 = "yangmao@Abc123456";
	public DBUtil2(){};
	public static synchronized DBUtil2 getInstance(){
		if(instance==null) {
			instance = new DBUtil2();
		}
		return instance;
	}
	/**
	 * 获取连接对象
	 * 
	 * @return
	 */
	/*	public static Connection getConnection() {
		try {
			Class.forName("org.logicalcobwebs.proxool.admin.servlet.AdminServlet");
			//Class.forName(driver);
			//conn = DriverManager.getConnection(PropertyReader.getProperties("conStr"), PropertyReader.getProperties("username"), PropertyReader.getProperties("pwd"));
			conn=DriverManager.getConnection("proxool.myProxool");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
			
		public static Connection getConnection() {
		try {
			Class.forName(Driver);
			conn = DriverManager.getConnection(PropertyReader.getProperties("url"), PropertyReader.getProperties("UserName"), PropertyReader.getProperties("PassWord"));
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	*/
		public static Connection getConnection() {
			try {
				Class.forName(mdriver);
//				conn = DriverManager.getConnection(mconStr3,musername,mpwd3);
				mconStr4 = LoadYmlUtils.getValue("jdbc.url");
				musername4 = LoadYmlUtils.getValue("jdbc.username");
				mpwd4 = LoadYmlUtils.getValue("jdbc.pwd");
				conn = DriverManager.getConnection(mconStr4, musername4, mpwd4);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return conn;
		}	
		
	/**
	 * 
	 * 测试oracle链接
	 * @param args
	 */
	public static void main(String[] args) {
		System.out.println(getConnection());
	}
	/**
	 * 获取预编译语句对象
	 * @param sql
	 * @return 预编译语句对象
	 */
	public PreparedStatement getPrepareStatement(String sql) {
		try {
			ps=getConnection().prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ps;
	}
 
	/**
	 * 执行预编译语句对象的查询操作
	 * 
	 * @param ps
	 * @return 结果集
	 */
	public ResultSet executeQuery(PreparedStatement ps) {
		try {
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	/**
	 * 执行预编译语句对象的增删改操作
	 * 
	 * @param ps
	 * @return 影响行数
	 */
	public int executeUpdate(PreparedStatement ps) {
		int count = 0;
		try {
			count = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}
	/**
	 * 调用执行存储过程并传参
	 * @param proc
	 * @param os
	 * @return 结果集
	 */
   public ResultSet getRSWithProc(String proc,Object[] os){
	   try {
		cs=getConnection().prepareCall(proc);
		if(os!=null){
			for (int i = 0; i < os.length; i++) {
				if(os[i] instanceof String)
					cs.setString(i+1, (String) os[i]);
				if(os[i] instanceof Integer)
					cs.setInt(i+1, (Integer) os[i]);
			}
		}
		rs=cs.executeQuery();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	   return rs;
   }
	/**
	 * 关闭三个对象的方法，注意顺序
	 */
   /**
    * 关闭结果集
    */
	public void closeRs() {
		try {
			if (rs != null) {
				rs.close();
				rs = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
/**
 * 关闭预编译语句对象
 */
	public void closePs() {
		try {
			if (ps != null) {
				ps.close();
				ps = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 关闭调用存储过程的语句对象
	 */
	public void closeCs() {
		try {
			if (cs != null) {
				cs.close();
				cs = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
/**
 * 关闭连接对象
 */
	public void closeConn() {
		try {
			if (conn != null) {
				conn.close();
				conn = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
