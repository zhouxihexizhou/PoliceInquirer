<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'searchPoliceId.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body
  { 
   margin-top:0px;
   margin-right:0px;
 margin-bottom:100px;
 margin-left:0px;
  background-image: url(image/police.jpg);
  width:100%;
  background-repeat:no-repeat;
  background-position:0 -100px;
   background-position-x:center;
 background-attachment:fixed;
  }
</style>
  </head>
 
<body bgcolor=#87cefa>
  <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
  <FORM action="searchPoliceIdBy.jsp" Method="post" >
    <H3 align="center">请输入警号：</H3>
    <div align="center">
    <input type="text" name="policeId"><br>
    <br>
    <br>
    <br>
    <input type="submit" name="searchId" value="查询">
    </div>
    <br>
    <br>
    <br>
    <br>
    <div align="center">
        <input type=button value='返回' onclick="location='searchPeople.jsp'">
    </div>
  </body>
</html>
