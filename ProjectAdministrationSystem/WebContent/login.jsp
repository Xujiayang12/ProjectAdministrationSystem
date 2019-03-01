<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>项目文档管理系统</title>
</head>
<body bgcolor="#cccfff">
          <form  action="main.jsp"method="post">
          <table>
              <tr>
                 <td align="right"width="50%">
                 <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;项目文档管理系统</h1>
                 </td>
                 <td align="left"width="50%">
                 <h1></h1>
                 </td>
               </tr>
               <tr>
                  <td colspan="2">
                  <hr align="center"width="100%"size="30"color="azure">
                  </td>
               </tr>
               <tr>
               <td width="30%"align="center">
                   <img src="login.jpg"height="280"/>
               </td>
               <td width="70">
               <table border="5"align="right"bgcolor="#99aadd">
               <tr>
                   <td>
                        <label>用户名：</label>
                        <input type ="text" name ="username"/><br/>
                   </td>
               </tr>  
               <tr>
                   <td>
                        <label>密&nbsp;&nbsp;&nbsp;码：</label>
                        <input type ="password" name ="upwd"/><br/>  
                   </td>
               </tr>
               <tr>
                   <td colspan="2"align="center">
               <input type ="submit"   value="确定"> 
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <input type ="reset"   value="清空"> 
                   </td>
               </tr> 
               <tr>
                   <td>
                 <h6>建议使用Google浏览器或360浏览器（极速模式），<br/>
                                             使用其它浏览器可能产生部分功能失效</h6>  
               </tr>                
               </table>
          </table>
          </form>
</body>
</html>