<%@ page contentType="text/html;charsAllet=gb2312" %>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="DB.SignUpDao" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginBy.jsp' starting page</title>
    
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
  
  <jsp:useBean id="bean" class="DB.Sign"></jsp:useBean>
  <jsp:setProperty property="*" name="bean"/>
  
  <body bgcolor=#87cefa>
  <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    
    <br>
    <%
    String no=request.getParameter("noj");
    no=new String(no.getBytes("ISO-8859-1"));
     
    String pasw=request.getParameter("passwordj");
     pasw=new String(pasw.getBytes("ISO-8859-1"));
   
    if(no==null||"".equals(no.trim())||pasw==null||"".equals(pasw.trim()))
    {
      // out.println("<script language='text/javascript'>alert('请输入用户名与密码！');history.go(-1);</script>");
        //  System.out.println("用户名或密码不能为空！");
        out.print("<script>alert('用户名或密码不能为空！'); window.location='login.jsp' </script>");
        out.flush();
        // out.println("<script language=\"JavaScript\">if(confirm(\"您的账号或密码输入错误！\")){window.location.href=\"login.jsp\"}{window.location.href=\"login.jsp\"}</script>");
          response.sendRedirect("login.jsp");
          return;
    }
     SignUpDao signUp=new SignUpDao(no,pasw,null,null);
     if(signUp.signed()==true)
     {
         System.out.println("登录成功！");
         
         response.sendRedirect("homePage.jsp");
     }
     else
     {
         if(signUp.check()==false)
         {
             //System.out.println("用户不存在！");
              out.print("<script>alert('用户不存在！'); window.location='login.jsp' </script>");
             out.flush();
             response.sendRedirect("login.jsp");
         }
         else
         {
             //System.out.println("密码错误！");
              out.print("<script>alert('密码错误！'); window.location='login.jsp' </script>");
             out.flush();
             response.sendRedirect("login.jsp");
         }
     }
     %>
  </body>
</html>
