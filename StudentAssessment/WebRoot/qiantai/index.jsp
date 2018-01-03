<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
	
	<style rel="stylesheet" type="text/css">
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>

	<SCRIPT type=text/javascript>
	    function cepingAll(userId)
	    {
	        var strUrl = "<%=path %>/cepingAll.action?userId="+userId;
            var ret = window.showModalDialog(strUrl,"","dialogWidth:800px; dialogHeight:300px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	    }
	</SCRIPT>
	
	
  </head>
  
<body>
<DIV class=fwtop>
	<jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>
</DIV>



<table align="center" style="margin-top: 6px;margin-bottom: 6px;" width="1001"><tr><td><DIV style="border:1px solid  #CCCCCC; padding:9px;width: 980px;">
                    <fieldset><legend class="fieldtitle">&nbsp;系统公告</legend>
						<table class="bill" width="97%">
							<tr>
								<td>
								<c:forEach items="${requestScope.gonggaoList}" var="gonggao">
						   <div class="c1-bline" style="padding:7px 0px;">
						       <div class="f-left">
							     <img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
						             <a href="<%=path %>/gonggaoDetailQian.action?gonggaoId=${gonggao.gonggaoId}">${gonggao.gonggaoTitle}</a>
						       </div>
						      <div class="f-right">${gonggao.gonggaoData}</div>
						      <div class="clear"></div>
						  </div>
					</c:forEach>
								</td>
							</tr>
						</table>
					</fieldset>
					<br/>
					
					<fieldset><legend class="fieldtitle">&nbsp;量化排名</legend>
						<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
							<tr bgcolor="#E7E7E7">
								<td height="14" colspan="10" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
							</tr>
							<tr align="center" bgcolor="#FAFAF1" height="22">
								<td width="5%">序号</td>
								<td width="10%">姓名</td>
								<td width="10%">住址</td>
								<td width="10%">性别</td>
								
								<td width="10%">电话</td>
								<td width="10%">学员证</td>
								<td width="10%">分数</td>
					        </tr>	
							<s:iterator value="#request.userList" id="user" status="sta">
							<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
								<td bgcolor="#FFFFFF" align="center">
									<s:property value="#sta.index+1"/>
								</td>
								<td bgcolor="#FFFFFF" align="center">
									<s:property value="#user.userRealname"/>
								</td>
								<td bgcolor="#FFFFFF" align="center">
									<s:property value="#user.userAddress"/>
								</td>
								<td bgcolor="#FFFFFF" align="center">
								    <s:property value="#user.userSex"/>
								</td>
								
								<td bgcolor="#FFFFFF" align="center">
									<s:property value="#user.userTel"/>
								</td>
								<td bgcolor="#FFFFFF" align="center">
									<s:property value="#user.userEmail"/>
								</td>
								<td bgcolor="#FFFFFF" align="center">
									<s:property value="#user.zongfen+100"/>
									&nbsp;&nbsp;
									<a href="#" onclick="cepingAll(<s:property value="#user.userId"/>)">查看测评信息</a>
								</td>
							</tr>
							</s:iterator>
						</table>
					</fieldset>                   
</DIV></td></tr></table>




<!-- foot -->
   <jsp:include flush="true" page="/qiantai/foot.jsp"></jsp:include>
<!-- foot -->
</body>
</html>
