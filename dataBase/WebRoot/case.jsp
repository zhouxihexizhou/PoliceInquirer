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
    
    <title>My JSP 'case.jsp' starting page</title>
    
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
  <FORM action="caseBy.jsp" Method="post" >
     <h1 align="center">请输入案件信息</h1>
     <center>
     <table width="80%" border="0" align="center" style="width: 1019px; ">
    
      <tr>
      <th width="100" height="50"> 地点</th>
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
    <th width="100" height="50"> </th>
      <td>
       <select id="street" name="street">
       <option label="安定门" value="1">安定门</option>
       <option label="建国门" value="2">建国门</option>
       <option label="朝阳门" value="3">朝阳门</option>
        </select>街道
        </td>
    </tr>  
    <tr>
    <th width="100" height="50"> 案件类型</th>
      <td>
        <select  name="type" onChange="caseType()">
          <option label="民事" value="1">民事</option>
          <option label="刑事" value="2">刑事</option>
        </select>   
       </td>
      <tr>
    <th width="100" height="50"> </th>
      <td>
        <select name="classification" >
          <option label="人格权纠纷" value="1">人格权纠纷</option>
          <option label="婚姻家庭纠纷" value="2">婚姻家庭纠纷</option>
          <option label="物权纠纷" value="3">物权纠纷</option>
          <option label="合同纠纷" value="4">合同纠纷</option>
          <option label="竞争产权" value="5">竞争产权</option>
          <option label="劳动争议" value="6">劳动争议</option>
          <option label="人事争议" value="7">人事争议</option>
          <option label="海事海商纠纷" value="8">海事海商纠纷</option>
          <option label="侵权责任纠纷" value="9">侵权责任纠纷</option>
          <option label="知识产权纠纷" value="10">知识产权纠纷</option>
          <option label="其他民事纠纷" value="11">其他民事纠纷</option>
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
function caseType()
{
        var x=document.getElementById("type");
        var y=document.getElementById("classification");
        if(x.selectedIndex==1)
        {
             y.options.length=0;
             y.options.add(new Option("打架斗殴","1"));
             y.options.add(new Option("强奸","2"));
             y.options.add(new Option("枪击","3"));
             y.options.add(new Option("杀人","4"));
             y.options.add(new Option("爆炸","5"));
             y.options.add(new Option("侵犯财产权","6"));
             y.options.add(new Option("贪污贿赂","7"));
             y.options.add(new Option("军人违反职责罪","8"));
             y.options.add(new Option("渎职罪","9"));
             y.options.add(new Option("妨害社会管理秩序","10"));
             y.options.add(new Option("危害国家安全","11"));
        }
         if(x.selectedIndex==0)
        {
             y.options.length=0;
             y.options.add(new Option("人格权纠纷","1"));
             y.options.add(new Option("婚姻家庭纠纷","2"));
             y.options.add(new Option("物权纠纷","3"));
             y.options.add(new Option("合同纠纷","4"));
             y.options.add(new Option("竞争产权","5"));
             y.options.add(new Option("劳动争议","6"));
             y.options.add(new Option("人事争议","7"));
             y.options.add(new Option("海事海商纠纷","8"));
             y.options.add(new Option("侵权责任纠纷","9"));
             y.options.add(new Option("知识产权纠纷","10"));
             y.options.add(new Option("其他民事纠纷","11"));
             }
}
</script>        
      </tr>
      </table> 
      <input type="submit" name="g" value="提交" style="height:50;width:100;color:black">
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
