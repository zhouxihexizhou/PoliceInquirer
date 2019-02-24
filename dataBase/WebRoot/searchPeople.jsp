<%@ page contentType="text/html;charset=gb2312" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'searchPeople.jsp' starting page</title>
    
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

    <H1 align="center">查看个人信息</H1>
    <br>
    <br>
    <br>
    <div align="center">
        <input type=button value='根据警号查询' onclick="location='searchPoliceId.jsp'"><br>
        <br>
        <br>
        <br>
        <input type=button value='根据派出所查询' onclick="location='searchPoliceStation.jsp'"><br>
    </div>
    <br>
    <br>
    <br>
    <br>
    <div align="center">
        <input type=button value='返回' onclick="location='homePage.jsp'">
    </div>

  </body>
</html>
