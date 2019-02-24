<%@ page contentType="text/html;charset=gb2312" %>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
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
  <br><br><br>
  <br>
   
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>

     <% 
    String region=request.getParameter("region");
    region=new String(region.getBytes("ISO-8859-1"));
    
    String street=request.getParameter("street");
    street=new String(street.getBytes("ISO-8859-1"));
    
    String type=request.getParameter("type");
    type=new String(type.getBytes("ISO-8859-1"));
    
    String classification=request.getParameter("classification");
    classification=new String(classification.getBytes("ISO-8859-1"));
    
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
  
       
       String rank="";
       if(type.equals("1")==true)
       {
           
           String ty1="SELECT * FROM [assignment].[dbo].[civil] WHERE CIno=" +classification;
           rs=sql.executeQuery(ty1);
           rs.next();
          // System.out.println(classification);
           rank=rs.getString("Crank");
           
          
          // System.out.println("!!aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
       }
        else if(type.equals("2")==true)
       {
           String ty2="SELECT Crank FROM [assignment].[dbo].[criminal] WHERE CRno=" +classification;
           rs=sql.executeQuery(ty2);
           rs.next();
           rank=rs.getString("Crank");
        }
           String typeCondition="SELECT Cnumber FROM [assignment].[dbo].[treatCase] WHERE Crank=" +rank;
           rs=sql.executeQuery(typeCondition);
           rs.next();
           String people=rs.getString("Cnumber");
           if(people.equals("2")) amount=2;
           else if(people.equals("3")) amount=3;
           else if(people.equals("5")) amount=5;
           else if(people.equals("8")) amount=8;
         
        //更新案件信息表
        String insert="insert into caseIn(Ctype,Cclass,Crank,Ano,Sno) values('"+Integer.parseInt(type)+"','"+Integer.parseInt(classification)+"','"+Integer.parseInt(rank)+"','"+Integer.parseInt(region)+"','"+Integer.parseInt(street)+"')";
        sql.executeUpdate(insert);
        
        //上早晚班
        Date date =new Date();
        SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH");
        String nowTime=format.format(new Date());
        String now=nowTime.substring(nowTime.length()-2,nowTime.length());
        if(9<Integer.parseInt(now) && Integer.parseInt(now)<17) PTime="白班";
        else PTime="夜班"; 
        
         //得到街道
         String po="SELECT PSno FROM [assignment].[dbo].[scope] WHERE Ano="+region+" and Sno="+street;
        rs=sql.executeQuery(po);
        rs.next();
        String psno=rs.getString(1);
         //System.out.println(psno);
        //查询警察表
        String condition="SELECT Pno,Pname,Psex,tel FROM [assignment].[dbo].[police] WHERE PSno="+psno+" and PTime='"+PTime+"'";      
        rs=sql.executeQuery(condition);
           
        int num=0;
       // System.out.println(rank);
        while(rs.next()&&num<amount){
              if(num==0)
              {
               
               out.print(" <center><h1> 出警人员选择情况：</h1>");
               out.print("<Table Border align=\"center\">");
               out.print("<TR>");
               out.print("<TH width=100>"+"警号");
               out.print("<TH width=100>"+"姓名");
               out.print("<TH width=100>"+"性别");
               out.print("<TH width=100>"+"联系方式");
               out.print("</TR>");
              }
              num++;
              out.print("<TR>");
              out.print("<TD >"+rs.getString(1)+"</TD>"); 
              out.print("<TD >"+rs.getString(2)+"</TD>");
              out.print("<TD >"+rs.getString(3)+"</TD>"); 
              out.print("<TD >"+rs.getString(4)+"</TD>");
              out.print("</TR>") ;
              }
              if(num==0)out.println("<br><br><br><br><br> <br>    <br>    <br>    <br><h2 align=\"center\"> <font color=\"#ff000\">无相关人员信息！</font></h2>");
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
       System.out.println(classification);--%> 
        
   <br>
   <br>
   <br>
   <div align="center">
        <input type=button value='返回' onclick="location='case.jsp'">
    </div>
  </body>
</html>
