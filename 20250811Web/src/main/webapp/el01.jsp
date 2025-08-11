<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${ fac = (n) -> n == 1 ? 1 : n * fac(n-1) }<br/>
${ fac(5) }<br/>
${ GreaterThan = (a, b) -> (a > b) ? true : false;'' }
${ GreaterThan(100, 30)}
</body>
</html>