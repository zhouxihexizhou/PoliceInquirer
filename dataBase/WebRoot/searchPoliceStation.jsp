<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'searchPoliceStation.jsp' starting page</title>
    
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
  <center>
  <FORM action="searchPoliceStationBy.jsp" Method="post" >
    <H3 align="center">请输入派出所：</H3>
    <select name="station" >
          <option label="安定门派出所" value="1">安定门派出所</option>
          <option label="建国门派出所" value="2">建国门派出所</option>
          <option label="朝阳门派出所" value="3">朝阳门派出所</option>
          <option label="西长安派出所" value="4">西长安派出所</option>
          <option label="新街口派出所" value="5">新街口派出所</option>
          <option label="大栅栏派出所" value="6">大栅栏派出所</option>
          <option label="和平街派出所" value="7">和平街派出所</option>
          <option label="八里庄派出所" value="8">八里庄派出所</option>
          <option label="三里屯派出所" value="9">三里屯派出所</option>
          <option label="大红门派出所" value="10">大红门派出所</option>
          <option label="南苑派出所" value="11">南苑派出所</option>
          <option label="丰台派出所" value="12">丰台派出所</option>
          <option label="八宝山派出所" value="13">八宝山派出所</option>
          <option label="八角派出所" value="14">八角派出所</option>
          <option label="苹果园派出所" value="15">苹果园派出所</option>
          <option label="中关村派出所" value="16">中关村派出所</option>
          <option label="西三旗派出所" value="17">西三旗派出所</option>
          <option label="清华园派出所" value="18">清华园派出所</option>
          <option label="大峪派出所" value="19">大峪派出所</option>
          <option label="大台派出所" value="20">大台派出所</option>
          <option label="东辛房派出所" value="21">东辛房派出所</option>
          <option label="拱辰派出所" value="22">拱辰派出所</option>
          <option label="西潞派出所" value="23">西潞派出所</option>
          <option label="城关派出所" value="24">城关派出所</option>
          <option label="北苑派出所" value="25">北苑派出所</option>
          <option label="中仓派出所" value="26">中仓派出所</option>
          <option label="新华派出所" value="27">新华派出所</option>
          <option label="胜利派出所" value="28">胜利派出所</option>
          <option label="光明派出所" value="29">光明派出所</option>
          <option label="城北派出所" value="30">城北派出所</option>
          <option label="城南派出所" value="31">城南派出所</option>
        </select><br>
    <br>
    <br>
    <H3 align="center">请输入部门：</H3>
    <select name="department" >
          <option label="消防科" value="1">消防科</option>
          <option label="治安科" value="2">治安科</option>
          <option label="户籍科" value="3">户籍科</option>
          <option label="内勤" value="4">内勤</option>
          <option label="刑警队" value="5">刑警队</option>
          <option label="档案室" value="6">档案室</option>
        </select>
    <br>
    <br>
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
    </FORM>
    </center>
  </body>
</html>
