package univ;

import java.sql.*;
import java.util.*;
import javax.sql.*;
import javax.naming.*;

//DBCP를 이용한 테이블 drink 처리 데이터베이스 연동 자바빈즈 프로그램
public class DrinkDBCP {
	
	//데이터베이스 연결관련 변수 선언
	private Connection con=null;
	private PreparedStatement pstmt=null;
	private DataSource ds=null;
	
	//JDBC 드라이버 로드 메소드
	public DrinkDBCP() {
		try {
			InitialContext ctx=new InitialContext();
			ds=(DataSource)ctx.lookup("java:comp/env/jdbc/mysql");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//데이터베이스 연결 메소드
	public void connect() {
		try {
			con=ds.getConnection();
			System.out.println("drinkDBCP가 정상 연결 되었습니다.");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//데이터베이스 연결 헤제 메소드
	public void disconnect() {
		if(pstmt!=null) {
			try {
				pstmt.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		if(con!=null) {
			try {
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//게시판의 모든 레코드를 반환하는 메소드
	public ArrayList<DrinkEntity>getDrinkList(){
		connect();
		ArrayList<DrinkEntity>list=new ArrayList<DrinkEntity>();
		
		String SQL="select * from drink";
		try{
			pstmt=con.prepareStatement(SQL);
			ResultSet rs=pstmt.executeQuery();
			
			while(rs.next()) {
				DrinkEntity ude=new DrinkEntity();
				ude.setI(rs.getInt("i"));
				ude.setName(rs.getString("name"));
				ude.setPrice(rs.getInt("price"));
				ude.setNum(rs.getInt("num"));
				ude.setCup(rs.getString("cup"));
				ude.setSize(rs.getString("size"));
				ude.setCoffee(rs.getString("coffee"));
				ude.setSyrup(rs.getString("syrup"));
				ude.setMilk(rs.getString("milk"));
				ude.setTopping(rs.getString("topping"));
				ude.setLid(rs.getString("lid"));
				//리스트에 추가
				list.add(ude);
			}
			rs.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return list;
	}
	
	//주 키 i의 레코드를 반환하는 메소드
	public DrinkEntity getDrink(int i) {
		connect();
		String SQL="select * from drink where i=?";
		DrinkEntity ude=new DrinkEntity();
		
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setInt(1, i);
			ResultSet rs=pstmt.executeQuery();
			rs.next();
			ude.setI(rs.getInt("i"));
			ude.setName(rs.getString("name"));
			ude.setPrice(rs.getInt("price"));
			ude.setNum(rs.getInt("num"));
			ude.setCup(rs.getString("cup"));
			ude.setSize(rs.getString("size"));
			ude.setCoffee(rs.getString("coffee"));
			ude.setSyrup(rs.getString("syrup"));
			ude.setMilk(rs.getString("milk"));
			ude.setTopping(rs.getString("topping"));
			ude.setLid(rs.getString("lid"));
			rs.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return ude;
	}
	
	//등록 메소드
	public boolean insertDB(DrinkEntity drink) {
		boolean success = false;
		connect();
		String sql="insert into drink values(0,?,?,?,?,?,?,?,?,?,?)";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, drink.getName());
			pstmt.setInt(2, drink.getPrice());
			pstmt.setInt(3, drink.getNum());
			pstmt.setString(4, drink.getCup());
			pstmt.setString(5, drink.getSize());
			pstmt.setString(6, drink.getCoffee());
			pstmt.setString(7, drink.getSyrup());
			pstmt.setString(8, drink.getMilk());
			pstmt.setString(9, drink.getTopping());
			pstmt.setString(10, drink.getLid());
			pstmt.executeUpdate();
			success=true;
		}catch(SQLException e) {
			e.printStackTrace();
			return success;
		}
		finally {
			disconnect();
		}
		return success;
	}
	
	
	//삭제 메소드
	public boolean deleteDB(int i) {
		boolean success=false;
		connect();
		String sql="delete from drink where i=?";
		try {
			pstmt=con.prepareStatement(sql);
			//인자로 받은 주 키인 i값을 이용해 삭제
			pstmt.setInt(1, i);
			pstmt.executeUpdate();
			
			success=true;
		}catch(SQLException e) {
			e.printStackTrace();
			return success;
		}finally {
			disconnect();
		}
		return success;
	}
	
	public void deleteAll(DrinkEntity ude) {
		connect();
		String sql="delete from drink";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.executeUpdate();
			//
			sql="alter table drink auto_increment=1";
			pstmt=con.prepareStatement(sql);
			pstmt.executeUpdate();
			//
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
			System.out.println("성공적으로 삭제 하였습니다.");
			
			
			
					
		}
	}
	

}
