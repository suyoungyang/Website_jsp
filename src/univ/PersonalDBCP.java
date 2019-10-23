package univ;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;
import java.util.*;


public class PersonalDBCP {
	
	//
	private Connection con=null;
	private PreparedStatement pstmt=null;
	private DataSource ds=null;
	
	
	//JDBP드라이버 로드 메소드
	public PersonalDBCP(){
		try {
			InitialContext ctx=new InitialContext();
			ds=(DataSource)ctx.lookup("java:comp/env/jdbc/mysql");
			if(ds!=null) {System.out.println("Datasource에 접속 되었습니다.");}else {}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//데이터베이스 연결 메소드
	public void connect() {
		try {
			con=ds.getConnection();
			System.out.println("연결 되었습니다.");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//데이터베이스 연결 해제 메소드
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
			System.out.println("정상 해제 되었습니다.");
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	}
	
	//개인정보의 모든 레코드를 반환하는 메소드
	public ArrayList<PersonalInfoEntity>getPersonList(){
		connect();
		ArrayList<PersonalInfoEntity>list=new ArrayList<PersonalInfoEntity>();
		
		String SQL="select * from person";
		try {
			pstmt=con.prepareStatement(SQL);
			ResultSet rs=pstmt.executeQuery();
			
			while(rs.next()) {
				PersonalInfoEntity pie=new PersonalInfoEntity();
				pie.setId(rs.getString("id"));
				pie.setPasswd(rs.getString("passwd"));
				pie.setName(rs.getString("name"));
				pie.setBirth(rs.getString("birth"));
				pie.setSex(rs.getString("sex"));
				pie.setEmail(rs.getString("email"));
				pie.setPhone(rs.getString("phone"));
				//??????? ???
				list.add(pie);
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
	
	//주 키 id의 레코드를 반환하는 메소드
	public PersonalInfoEntity getPerson(String id) {
		connect();
		String SQL="select * from person where id=?";
		PersonalInfoEntity pie=new PersonalInfoEntity();
		
		try {
			pstmt=con.prepareStatement(SQL);
			pstmt.setString(1, id);
			ResultSet rs=pstmt.executeQuery();
			rs.next();
			pie.setId(rs.getString("id"));
			pie.setPasswd(rs.getString("passwd"));
			pie.setName(rs.getString("name"));
			pie.setBirth(rs.getString("birth"));
			pie.setSex(rs.getString("sex"));
			pie.setEmail(rs.getString("email"));
			pie.setPhone(rs.getString("phone"));
			rs.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return pie;
	}
	

	//회원정보 등록 메소드
	public boolean insertDB(PersonalInfoEntity pie) {
		boolean success=false;
		connect();
		String sql="insert into person values(?,?,?,?,?,?,?)";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, pie.getId());
			pstmt.setString(2, pie.getPasswd());
			pstmt.setString(3, pie.getName());
			pstmt.setString(4, pie.getBirth());
			pstmt.setString(5, pie.getSex());
			pstmt.setString(6, pie.getEmail());
			pstmt.setString(7, pie.getPhone());
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
	
	//데이터 갱신을 위한 메소드
	public boolean updateDB(PersonalInfoEntity pie) {
		boolean success=false;
		connect();
		String sql="update person set passwd=?,name=?,birth=?,sex=?,email=?,phone=? where id=?";
		try {
			pstmt=con.prepareStatement(sql);
			//인자로 받은 pie객체를 이용해 사용자가 수정한 값을 가져와 sql문 완성
			pstmt.setString(1, pie.getPasswd());
			pstmt.setString(2, pie.getName());
			pstmt.setString(3, pie.getBirth());
			pstmt.setString(4, pie.getSex());
			pstmt.setString(5, pie.getEmail());
			pstmt.setString(6, pie.getPhone());
			pstmt.setString(7, pie.getId());
			int rowUdt=pstmt.executeUpdate();
			System.out.println(rowUdt);
			if(rowUdt==1)success=true;
		}catch(SQLException e) {
			e.printStackTrace();
			return success;
		}
		finally {
			disconnect();
		}
		return success;
	}
	
	//id삭제를 위한 메소드
	public boolean deleteDB(String id) {
		boolean success=false;
		connect();
		String sql="delete from person where id=?";
		try {
			pstmt=con.prepareStatement(sql);
			//인자로 받은 주 키인 id값을 이용해 삭제
			pstmt.setString(1, id);
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
	//데이터베이스에서 인자인 id와 passwd가 일치하는지 검사하는 메소드
	public boolean isPasswd(String id,String passwd) {
		boolean success=false;
		connect();
		String sql="select passwd from person where id=?";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs=pstmt.executeQuery();
			rs.next();
			String orgPasswd=rs.getString(1);
			if(passwd.equals(orgPasswd))success=true;
			System.out.println(success);
			rs.close();
		}catch(SQLException e) {
			e.printStackTrace();
			return success;
		}
		finally {
			disconnect();
		}
		return success;
	}

}