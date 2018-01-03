<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

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
        
        <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
        
        
        <script language="javascript">
		    
		    function check()
		    {
		        document.formAdd.submit();
		    }
		     
		     
		    function init()
	        {
	           loginService.xiangmuSelect(callBack);
	        }
	        
	        function callBack(data)
	        {
	            DWRUtil.addOptions("xiangmuId",data,"id","mingcheng");
	        }
			
		    
        </script>
	</head>

	<body onload="init()" leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
			<form action="<%=path %>/cepingAdd.action" name="formAdd" method="post" enctype="multipart/form-data">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>&nbsp;</span></td>
					    </tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						                         测评项目：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        <select name="xiangmuId" id="xiangmuId" style="width: 200px;">
								</select>
						    </td>
						</tr>
						<tr align='center' style="display: none">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						                         项目分值：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        <select name="fenzhi" style="width: 120px;">
						            <option value="10">+10</option>
						            <option value="9">+9</option>
						            <option value="8">+8</option>
						            <option value="7">+7</option>
						            <option value="6">+6</option>
						            <option value="5">+5</option>
						            <option value="4">+4</option>
						            <option value="3">+3</option>
						            <option value="2">+2</option>
						            <option value="1">+1</option>
						            <option value="-1">-1</option>
						            <option value="-2">-2</option>
						            <option value="-3">-3</option>
						            <option value="-4">-4</option>
						            <option value="-5">-5</option>
						            <option value="-6">-6</option>
						            <option value="-7">-7</option>
						            <option value="-8">-8</option>
						            <option value="-9">-9</option>
						            <option value="-10">-10</option>
						        </select>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						                         备注信息：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="beizhu" style="width: 300px;"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						                         日期时间：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="shijian" style="width: 300px;" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%>"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">&nbsp;
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						       <input type="hidden" name="userId" value="<%=request.getParameter("userId") %>"/>
						       <input type="button" value="提交" onclick="check()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
