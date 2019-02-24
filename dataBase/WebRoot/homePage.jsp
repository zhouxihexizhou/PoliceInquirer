<%@ page contentType="text/html;charset=gb2312" %>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'homePage.jsp' starting page</title>
    
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
  
  <body bgcolor=#87cefa background="image/police.jpg">
    <div style="text-align: center">
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
        <h1>
            北京市派出所查询系统
        </h1>
        <br>
        <br>
        <br>
        
        <input name="button1" type="button" value="出警" onclick="javascript:window.location='case.jsp'"><br><br>
        <input name="button2" type="button" value="查看个人信息" onclick="javascript:window.location='searchPeople.jsp'"><br><br>
        <input name="button3" type="button" value="查看值班情况" onclick="javascript:window.location='searchWork.jsp'"><br><br>
        <input name="button4" type="button" value="退出" onclick="javascript:window.location='login.jsp'"><br><br>
    </head>
</div>
  </body>
</html>
