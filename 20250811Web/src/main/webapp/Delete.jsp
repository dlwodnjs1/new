<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");
String num = request.getParameter("num");

%>
<%
String curTime = LocalDate.now() + " " + LocalTime.now().toString().substring(0, 8);
//out.println(curTime);
Connection conn = null;
Statement stmt = null;
try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522/xe", "scott", "tiger");
    stmt = conn.createStatement();
    String sql = String.format("delete from board where num = %s", num);
    stmt.executeUpdate(sql);

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
response.sendRedirect("list.jsp");
%>







