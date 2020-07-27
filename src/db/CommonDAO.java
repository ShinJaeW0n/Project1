package db;

import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class CommonDAO {
	public static Connection getConnection() {
		Connection con = null;

		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/bbs_review");
			con = ds.getConnection();
			con.setAutoCommit(false);
			System.out.println("success");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;
	}
		 
	
		//접속을 종료하기위한 closeConnection 메소드를 구현합니다.
		public static void close(Connection con) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		public static void close(Statement stmt) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		public static void close(ResultSet rs) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		public static void commit(Connection con) {
			try {
				con.commit();
				System.out.println("commit success");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		public static void rollback(Connection con) {
			try {
				con.rollback();
				System.out.println("rollback success");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		}
