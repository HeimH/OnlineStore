<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

	<script language="javascript">
		    function check1()
		    {
		        if(document.form1.userName.value=="")
		        {
		            alert("请输入账号");
		            return false;
		        }
		        if(document.form1.userPw.value=="")
		        {
		            alert("请输入密码");
		            return false;
		        }
		        document.form1.submit();
		    }
        </script>
	
	
  </head>
  
<body>
<DIV class=fwtop>
	<jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>
</DIV>



<table align="center" style="margin-top: 6px;margin-bottom: 6px;" width="1001"><tr><td><DIV style="border:1px solid  #CCCCCC; padding:9px;width: 985px;">
     <form action="<%=path %>/userLogin.action" name="form1" method="post">
						<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
							<tr>
								<td width="15%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
									账号：
								</td>
								<td width="85%" bgcolor="#FFFFFF">
									&nbsp;
									<input type="text" name="userName" id="userName" style="width: 280px;"/>
								</td>
							</tr>
							<tr>
								<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
									密码：
								</td>
								<td bgcolor="#FFFFFF">
									&nbsp;
									<input type="password" name="userPw" style="width: 280px;" />
								</td>
							</tr>
							<tr>
								<td height="30" align="right" bgcolor="#F9F9F9">
									&nbsp;
								</td>
								<td bgcolor="#FFFFFF">
									&nbsp;
									<input type="button" value="确定" onclick="check1();" style="width: 80px;"/>
									<input type="reset" value="重置"  style="width: 80px;"/>
								</td>
							</tr>
						</table>
					</form>                 
</DIV></td></tr></table>




<!-- foot -->
   <jsp:include flush="true" page="/qiantai/foot.jsp"></jsp:include>
<!-- foot -->
</body>
</html>
