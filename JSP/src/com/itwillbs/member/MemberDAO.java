package com.itwillbs.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
	// DAO : Data Access Object (데이터 처리 객체) - DB처리객체

	// 공통사용되는 변수선언
	// 디비연결정보 저장객체
	Connection con = null;
	// SQL 구문 실행객체
	PreparedStatement pstmt = null;
	// Select문 결과(레코드셋)를 저장하는 객체
	ResultSet rs = null;
	String sql = "";

	/////////////////////////// 디비 연결 메서드///////////////////////////////////
	private Connection getCon() throws Exception {
		// 1. 드라이버 로드
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("드라이버 로드 성공!");

		// 2. 디비 연결
		Connection con 
		= DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "1234");
		System.out.println(" 디비 연결 성공! ");

		return con;
	}
	/////////////////////////// 디비 연결 메서드///////////////////////////////////
	
	/////////////////////////// 디비 자원해제 메서드///////////////////////////////
	public void closeDB(){
		try {
			if(rs != null)	rs.close();
			if(pstmt != null)	pstmt.close();
			if(con != null)	con.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	/////////////////////////// 디비 자원해제 메서드///////////////////////////////
	
	

	//////////////////////////////////////////////////////////////////////////
	// 회원가입 메서드
	public void insertMember(MemberBean mb) {

		try { // try - 예외가 발생할지도 모르는 구문

			// 1. 드라이버 로드
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("드라이버 로드 성공!");

			// 2. 디비 연결
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "1234");
			System.out.println(" 디비 연결 성공! ");

			// 3. sql 작성 & pstmt 생성
			String sql = "insert into itwill_member(id,pass,name,gender,age,email,reg_date) values(?,?,?,?,?,?,now())";
			PreparedStatement pstmt = con.prepareStatement(sql);

			// ??
			pstmt.setString(1, mb.getId());
			pstmt.setString(2, mb.getPass());
			pstmt.setString(3, mb.getName());
			pstmt.setString(4, mb.getGender());
			pstmt.setInt(5, mb.getAge());
			pstmt.setString(6, mb.getEmail());

			// 4. sql 실행
			pstmt.executeUpdate();

		} catch (ClassNotFoundException e) {
			System.out.println(" 드라이버 로드 실패! ");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println(" 디비연결 실패/SQL구문 오류 ");
			e.printStackTrace();
		} finally {
			// 예외 발생여부와 상관없이 반드시 한번 실행코드
			// 자원해제 - 사용한 코드의 역순
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}// insertMember(MemberBean mb) 끝
	
	
	// loginCheck(id,pass)
	public int loginCheck(String id, String pass){
		int result = -1;
		try {
			// 1. 드라이버로드
			// 2. 디비연결
			// => getCon() 실행
			con = getCon();
			
			// 3. sql 작성 & pstmt 객체 생성
			sql = "select pass from itwill_member where id=?";
			pstmt = con.prepareStatement(sql);
			
			// ?
			pstmt.setString(1, id);
			
			// 4. sql 실행
			rs = pstmt.executeQuery();
			
			// 아이디가 없는경우 (-1)리턴
			// 아이디는 있지만, 비밀번호 오류 (0)리턴
			// 아이디 있으면서, 비밀번호도 맞는경우 (1)리턴
			// 5. 최종 결과 리턴
			if(rs.next()){
				// 회원정보 있음
				if(pass.equals(rs.getString("pass"))){
					// 회원정보가 있으면서, 비밀번호 동일
					result = 1;
				}else{
					// 회원정보가 있음, 비밀번호 다름
					result = 0;
				}				
			}else{
				// 회원정보 없음
				result = -1;
			}
			
			System.out.println(" SQL구문 실행 완료! ");
			System.out.println(" 실행결과 : "+result);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		
		return result;		
	}
	// loginCheck(id,pass)
	
	
	// getMember(id)
	public MemberBean getMember(String id){
		
		MemberBean mb = null;
		
		try {
			// 1.2. 디비연결
			con = getCon();
			// 3. sql 작성(select) & pstmt 객체
			// sql- 전달받은 아이디에 해당하는 회원정보 모두가져오기
			sql = "select * from itwill_member where id=?";
			pstmt = con.prepareStatement(sql);
			
			// ?
			pstmt.setString(1, id);
			
			// 4. sql 실행
			rs = pstmt.executeQuery();
			// 5. 데이터처리
			if(rs.next()){
				// 데이터가 있음 -> 회원정보를 저장
				mb = new MemberBean();
				
				mb.setId(rs.getString("id"));
				mb.setPass(rs.getString("pass"));
				mb.setName(rs.getString("name"));
				mb.setAge(rs.getInt("age"));
				mb.setGender(rs.getString("gender"));
				mb.setEmail(rs.getString("email"));
				mb.setReg_date(rs.getDate("reg_date"));				
			}
			System.out.println(" SQL구문 실행완료! ");
			System.out.println(" 회원정보 : "+mb);		
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return mb;
	}
	// getMember(id)
	
	
	// updateMember(mb)
	public int updateMember(MemberBean mb){
		int result = -1;
		
		try {
			// 1.2.디비연결
			con = getCon();
			// 3. sql 작성(select) & pstmt 객체생성
			sql = "select pass from itwill_member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mb.getId());
			// 4. sql 실행
			rs = pstmt.executeQuery();
			// 5. 데이터 처리
			if(rs.next()){ // 데이터 있을때
				
				if(mb.getPass().equals(rs.getString("pass"))){ // 본인
					// 3. sql 작성 (update) & pstmt 객체 생성
					sql = "update itwill_member set name=?, age=?, gender=?, email=? where id=?";
					pstmt = con.prepareStatement(sql);
					
					pstmt.setString(1, mb.getName());
					pstmt.setInt(2, mb.getAge());
					pstmt.setString(3, mb.getGender());
					pstmt.setString(4, mb.getEmail());
					pstmt.setString(5, mb.getId());
					
					// 4. sql 실행
					result = pstmt.executeUpdate();
					// ->  sql구문이 실행했을때 영향을 준 row수 리턴
					
					System.out.println(" 회원정보 수정완료~! ");
					//result = 1;
					
				}else{
					// 비밀번호 오류
					result = 0;
				}
			}else{
				//데이터 없을때
				result = -1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return result;
	}
	// updateMember(mb)
	
	
	// deleteMember(id,pass)
	public int deleteMember(String id,String pass){
		int result = -1;
		
		try {
			// 1.2.디비연결
			con = getCon();
			// 3. sql 작성(select) & pstmt 객체생성
			sql = "select pass from itwill_member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,id);
			// 4. sql 실행
			rs = pstmt.executeQuery();
			// 5. 데이터 처리
			if(rs.next()){ // 데이터 있을때
				
				if(pass.equals(rs.getString("pass"))){ // 본인
					// 3. sql 생성 & pstmt 객체 생성
					sql = "delete from itwill_member where id=?";
					pstmt = con.prepareStatement(sql);
					
					pstmt.setString(1, id);					
					// 4. sql 실행
					result = pstmt.executeUpdate();
					System.out.println(" 회원삭제 완료! ");
				}else{
					// 비밀번호 오류
					result = 0;
				}
			}else{
				//데이터 없을때
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		
		return result;
	}
	// deleteMember(id,pass)
	
	
	// getMemberList()
	public ArrayList getMemberList(){
		// 가변길이 배열
		ArrayList memberList = new ArrayList();
		
		try {
			// 1.2. 디비연결
			con = getCon();
			// 3. sql 작성 & pstmt 객체생성
			//sql = "select * from itwill_member";
			sql = "select * from itwill_member where id != 'admin'";
			pstmt = con.prepareStatement(sql);
			// 4. sql 실행
			rs = pstmt.executeQuery();
			// 5. 데이터 처리
			
			while(rs.next()){
				// 회원 1명의 정보 => MemberBean저장
				MemberBean mb = new MemberBean();
				mb.setAge(rs.getInt("age"));
				mb.setEmail(rs.getString("email"));
				mb.setGender(rs.getString("gender"));
				mb.setId(rs.getString("id"));
				mb.setName(rs.getString("name"));
				mb.setPass(rs.getString("pass"));
				mb.setReg_date(rs.getDate("reg_date"));
				
				// MemberBean의 정보를 => ArrayList 1칸에 저장
				memberList.add(mb);
			
			}
			System.out.println("회원 목록 저장완료!");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		return memberList;
	}
	// getMemberList()
	
	
	
	
	

}
