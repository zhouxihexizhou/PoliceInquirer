<%@ page contentType="text/html;charset=gb2312" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'searchWork.jsp' starting page</title>
    
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
  <FORM action="searchBy.jsp" Method="post" >
     <h1 align="center">请输入查询信息：</h1>
     <center>
     <table width="80%" border="0" align="center" style="width: 1019px; ">
    
      <tr>
      <th width="100" height="50"> 区域</th>
      <td>
        <select id="region"  name="region" onChange="str()">
          <option selected="selected" label="东城" value="1">东城</option>
          <option label="西城" value="2">西城</option>
          <option label="朝阳" value="3">朝阳</option>
          <option label="丰台" value="4">丰台</option>
          <option label="石景山" value="5">石景山</option>
          <option label="海淀" value="6">海淀</option>
           <option label="门头沟" value="7">门头沟</option>
          <option label="房山" value="8">房山</option>
          <option label="通州" value="9">通州</option>
          <option label="顺义" value="10">顺义</option>
          <option label="昌平" value="11">昌平</option>
        </select>区
        </td>
    <tr>
    <th width="100" height="50"> 街道</th>
      <td>
       <select id="street" name="street">
       <option label="安定门" value="1">安定门</option>
       <option label="建国门" value="2">建国门</option>
       <option label="朝阳门" value="3">朝阳门</option>
        </select>街道
        </td>
    </tr>  
    <tr>
    <th width="100" height="50"> 选择部门</th>
      <td>
        <select  name="department" >
          <option label="消防科" value="1">消防科</option>
          <option label="治安科" value="2">治安科</option>
          <option label="户籍科" value="3">户籍科</option>
          <option label="内勤" value="4">内勤</option>
          <option label="刑警队" value="5">刑警队</option>
          <option label="档案室" value="6">档案室</option>
        </select>   
       </td>
      <tr>
    <th width="100" height="50">值班时间 </th>
      <td>
        <select name="time" >
          <option label="白班" value="1">白班</option>
          <option label="夜班" value="2">夜班</option>
        </select>
       </td>
<script>
 function str()
    {
        var x=document.getElementById("region");
        var y=document.getElementById("street");
        y.options.length=0;
        if(x.selectedIndex==0)
        {
             y.options.add(new Option("安定门","1"));
              y.options.add(new Option("建国门","2"));
               y.options.add(new Option("朝阳门","3"));
        }
        if(x.selectedIndex==1)
        {
             y.options.add(new Option("西长安","1"));
              y.options.add(new Option("新街口","2"));
               y.options.add(new Option("大栅栏","3"));
        }
        if(x.selectedIndex==2)
        {
             y.options.add(new Option("和平街","1"));
              y.options.add(new Option("八里庄","2"));
               y.options.add(new Option("三里屯","3"));
        }
        if(x.selectedIndex==3)
        {
             y.options.add(new Option("大红门","1"));
              y.options.add(new Option("南苑","2"));
               y.options.add(new Option("丰台","3"));
        }
        if(x.selectedIndex==4)
        {
             y.options.add(new Option("八宝山","1"));
              y.options.add(new Option("八角","2"));
               y.options.add(new Option("苹果园","3"));
        }
        if(x.selectedIndex==5)
        {
             y.options.add(new Option("中关村","1"));
              y.options.add(new Option("西三旗","2"));
               y.options.add(new Option("清华园","3"));
        }
        if(x.selectedIndex==6)
        {
             y.options.add(new Option("大峪","1"));
              y.options.add(new Option("大台","2"));
               y.options.add(new Option("东辛房","3"));
        }
        if(x.selectedIndex==7)
        {
             y.options.add(new Option("拱辰","1"));
              y.options.add(new Option("西潞","2"));
               y.options.add(new Option("城关","3"));
        }
        if(x.selectedIndex==8)
        {
             y.options.add(new Option("北苑","1"));
              y.options.add(new Option("中仓","2"));
               y.options.add(new Option("新华","3"));
        }
        if(x.selectedIndex==9)
        {
             y.options.add(new Option("胜利","1"));
              y.options.add(new Option("光明","2"));
        }
        if(x.selectedIndex==10)
        {
             y.options.add(new Option("城北","1"));
              y.options.add(new Option("城南","2"));
        } 
       
    }


</script>        
      </tr>
      </table> 
      <input type="submit" name="g" value="提交" style="height:50;width:100;color:red">
      <br>
      <br>
      <br>
      <div align="center">
        <input type=button value='返回' onclick="location='homePage.jsp'">
    </div>
      </center>
      </FORM>
  </body>
</html>
