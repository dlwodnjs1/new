<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*" %>
<%
request.setCharacterEncoding("utf-8");
String num = request.getParameter("num");
String title = request.getParameter("title");
String writer = request.getParameter("writer");
String content = request.getParameter("content");
String regtime = request.getParameter("regtime");
String hits = request.getParameter("hits");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록</title>
</head>
<body>

<%
Connection conn = null;
Statement stmt = null;

String sql = String.format("insert into board(title, writer, content, regtime, hits) values  ('%s', '%s', '%s', '%s', %s)",
		title, writer, content, regtime, hits);
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3305/du08", "root", "1234");
    stmt = conn.createStatement();
    stmt.executeUpdate(sql);
%>
새로운 회원을 등록했습니다.
<%
} catch (SQLException e) {
    out.println("데이터베이스 오류: " + e.getMessage());
} catch (ClassNotFoundException e) {
    out.println("드라이버를 찾을 수 없습니다: " + e.getMessage());
} finally {
    try {
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    } catch (SQLException e) {
        out.println("리소스를 닫는 도중 오류 발생: " + e.getMessage());
    }
}
%>
</body>
</html>