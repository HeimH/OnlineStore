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
	
	<style rel="stylesheet" type="text/css">
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>

	<SCRIPT type=text/javascript>
	    function liuyanDetail(id)
	        {
	             var strUrl = "<%=path %>/liuyanDetail.action?id="+id;
	             var ret = window.showModalDialog(strUrl,"","dialogWidth:800px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	        }
	</SCRIPT>
	
	
  </head>
  
<body>
<DIV class=fwtop>
	<jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>
</DIV>



<table align="center" style="margin-top: 6px;margin-bottom: 6px;" width="1001"><tr><td><DIV style="border:1px solid  #CCCCCC; padding:9px;width: 980px;">
       <c:forEach items="${requestScope.liuyanList}" var="liuyan" varStatus="sta">
			                        <div class="c1-bline" style="padding:7px 0px;">
				                        <div class="f-left">
				                             &nbsp;
				                             <img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
				                             <a href="#" onclick="liuyanDetail(${liuyan.id })">${liuyan.neirong }</a>
				                        </div>
				                        <div class="f-right">${liuyan.liuyanshi }</div>
				                        <div class="clear"></div>
			                        </div>
			                   </c:forEach>               
</DIV></td></tr></table>




<!-- foot -->
   <jsp:include flush="true" page="/qiantai/foot.jsp"></jsp:include>
<!-- foot -->
</body>
</html>
