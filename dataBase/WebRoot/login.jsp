<%@ page contentType="text/html;charset=gb2312" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
    <font size="6"><b>µÇÂ¼</b></font>
    <FORM action="loginBy.jsp" Method="post">
    <br>
    <p>
         ÓÃ»§Ãû£º
         <Input type=text name="noj">
     </p>
     <p>
         ÃÜÂë£º
         <Input type=text name="passwordj">    
     </p>
     <Input type=submit name="g" value="µÇÂ¼" style="height:50;color:black">
    </FORM>
    </center>
  </body>
</html>
