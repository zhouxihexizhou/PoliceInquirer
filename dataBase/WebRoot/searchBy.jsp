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
    
    <title>My JSP 'caseBy.jsp' starting page</title>
    
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
     <% 
    String region=request.getParameter("region");
    if(region==null)region="";
    region=new String(region.getBytes("ISO-8859-1"));
    
    String street=request.getParameter("street");
    if(street==null)street="";
    street=new String(street.getBytes("ISO-8859-1"));
    
    String department=request.getParameter("department");
    if(department==null)department="";
    department=new String(department.getBytes("ISO-8859-1"));
    
    String time=request.getParameter("time");
    if(time==null)time="";
    time=new String(time.getBytes("ISO-8859-1"));
    
    if(time.equals("1")==true) time="白班";
    else time="夜班";
    
      Connection con;
    Statement sql; 
    ResultSet rs;
    String PTime="";
    int amount=0;
    
    try{
         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
      }
    catch(ClassNotFoundException err){
         System.err.println("Error loading"+err);
      }
    try{
        String dbUrl="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=assignment";
        String user="sa";
        String password="sa";
		con = DriverManager.getConnection(dbUrl, user, password);
		sql=con.createStatement();
 
         //得到街道
         String po="SELECT PSno FROM [assignment].[dbo].[scope] WHERE Ano="+region+" and Sno="+street;
        rs=sql.executeQuery(po);
        rs.next();
        String psno=rs.getString(1);
         //System.out.println(psno);
        // System.out.println(department);
       //查询警察表
        String condition="SELECT Pno,Pname,Psex,Page,Paddress,Sname,Dname,PPname,PTime,Tel FROM [assignment].[dbo].[police],[assignment].[dbo].[scope],[assignment].[dbo].department WHERE police.PSno=scope.PSno and police.Dno=department.Dno and police.PSno='"+psno+"' and police.Dno='"+department+"' and PTime='"+time+"'";      
        rs=sql.executeQuery(condition);
           
        int num=0;
       // System.out.println(rank);
        while(rs.next()){
              if(num==0)
              {
              out.print("<center><h1> 查询结果：</h1>");
               out.print("<br><br><br><Table Border align=\"center\">");
               out.print("<TR>");
               out.print("<TH width=100>"+"警号");
               out.print("<TH width=100>"+"姓名");
               out.print("<TH width=100>"+"性别");
               out.print("<TH width=100>"+"年龄");
               out.print("<TH width=100>"+"家庭住址");
               out.print("<TH width=100>"+"所属派出所");
               out.print("<TH width=100>"+"部门");
               out.print("<TH width=100>"+"职位");
               out.print("<TH width=100>"+"上班时间");
               out.print("<TH width=100>"+"联系方式");
               out.print("</TR>");
              }
              num++;
              out.print("<TR>");
              out.print("<TD >"+rs.getString(1)+"</TD>"); 
              out.print("<TD >"+rs.getString(2)+"</TD>");
              out.print("<TD >"+rs.getString(3)+"</TD>"); 
              out.print("<TD >"+rs.getString(4)+"</TD>");
              out.print("<TD >"+rs.getString(5)+"</TD>");
              out.print("<TD >"+rs.getString(6)+"</TD>");
              out.print("<TD >"+rs.getString(7)+"</TD>");
              out.print("<TD >"+rs.getString(8)+"</TD>");
              out.print("<TD >"+rs.getString(9)+"</TD>");
              out.print("<TD >"+rs.getString(10)+"</TD>");
              out.print("</TR>") ;
              }
            if(num==0)out.println("<br><br><br><br> <br>    <br>    <br>    <br><br><h2 align=\"center\"> <font color=\"#ff000\">无相关人员信息！</font></h2>");
              else out.print("</Table>");
            // out.print("</Table>");
              con.close();
               }
    catch(SQLException e)
           {
           out.println("SQLException happened!"); 
           e.printStackTrace();
            }
    
    
   
         %>  
        
       <%--</Table> 
       
    System.out.println(region);
     System.out.println(street);
      System.out.println(type);
       System.out.println(time);--%> 
        
        <br>
        <br>
        <br>
        <div align="center">
        <input type=button value='返回' onclick="location='searchWork.jsp'">
    </div>
   
  </body>
</html>
