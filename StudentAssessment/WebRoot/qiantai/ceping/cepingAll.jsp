<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
        <script language="javascript">
           function cepingDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/cepingDel.action?id="+id;
               }
           }
           
           
           
       </script>
	</head>

	<body leftmargin="12" topmargin="12" background='<%=path %>/images/allbg.gif'>
			<table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="9" background="<%=path %>/images/tbg.gif">&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
				    <td width="5%">序号</td>
					<td width="15%">项目名称</td>
					<td width="10%">项目分值</td>
					<td width="25%">备注信息</td>
					
					<td width="10%">日期时间</td>
		        </tr>	
				<c:forEach items="${requestScope.cepingList}" var="ceping" varStatus="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						${ss.index+1}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${ceping.xiangmu.mingcheng}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${ceping.fenzhi}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${ceping.beizhu}
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						${ceping.shijian}
					</td>
				</tr>
				</c:forEach>
			</table>
	</body>
</html>