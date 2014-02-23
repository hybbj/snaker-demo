<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
		<title>流程部署</title>
		<%@ include file="/common/meta.jsp"%>
		<link rel="stylesheet" href="${ctx}/styles/css/style.css" type="text/css" media="all" />
		<script src="${ctx}/styles/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	</head>

	<body>
		<!-- <form id="inputForm" action="${ctx }/snaker/process/deploy" method="post" enctype="multipart/form-data"> -->
		<form id="inputForm" action="${ctx }/snaker/process/deployXml" method="post">
		<table width="100%" border="0" align="center" cellpadding="0"
				class="table_all_border" cellspacing="0" style="margin-bottom: 0px;border-bottom: 0px">
			<tr>
				<td class="td_table_top" align="center">
					流程部署
				</td>
			</tr>
		</table>
		<table class="table_all" align="center" border="0" cellpadding="0"
			cellspacing="0" style="margin-top: 0px">
				<tr>
					<td class="td_table_1">
						<span>上传流程定义文件：</span>
					</td>
					<td class="td_table_2" colspan="3">
						<!-- <input type="file" class="input_file" id="snakerFile" name="snakerFile"/> -->
						<input type="text" name="model" id="model"/>
					</td>
				</tr>
			</table>
			<table align="center" border="0" cellpadding="0"
				cellspacing="0">
				<tr align="left">
					<td colspan="1">
						<input type="submit" class="button_70px" name="submit" value="提交">
						&nbsp;&nbsp;
						<input type="button" class="button_70px" name="reback" value="返回"
							onclick="history.back()">
					</td>
				</tr>
			</table>
			
		</form>
	</body>
	<script type="text/javascript">
		document.getElementById("model").value="<process displayName=\"测试\" instanceUrl=\"/flow/leave/all\" name=\"leave222\"><start displayName=\"start1\" layout=\"24,124,-1,-1\" name=\"start1\"><transition g=\"\" name=\"transition1\" offset=\"0,0\" to=\"apply\"/></start><end displayName=\"end1\" layout=\"570,124,-1,-1\" name=\"end1\"/><task assignee=\"apply.operator\" displayName=\"测试步骤1\" form=\"/flow/leave/apply\" layout=\"117,122,-1,-1\" name=\"apply\" performType=\"ANY\"><transition g=\"\" name=\"transition2\" offset=\"0,0\" to=\"approveDept\"/></task><task assignee=\"approveDept.operator\" displayName=\"测试步骤2\" form=\"/flow/leave/approveDept\" layout=\"272,122,-1,-1\" name=\"approveDept\" performType=\"ANY\"><transition g=\"\" name=\"transition3\" offset=\"0,0\" to=\"decision1\"/></task><decision displayName=\"decision1\" expr=\"day &gt; 2 ? 'transition5' : 'transition4'\" layout=\"426,124,-1,-1\" name=\"decision1\"><transition displayName=\"&lt;=2\" g=\"\" name=\"transition4\" offset=\"0,0\" to=\"end1\"/><transition displayName=\"&gt;2\" g=\"\" name=\"transition5\" offset=\"0,0\" to=\"approveBoss\"/></decision><task assignee=\"approveBoss.operator\" displayName=\"测试步骤3\" form=\"/flow/leave/approveBoss\" layout=\"404,231,-1,-1\" name=\"approveBoss\" performType=\"ANY\"><transition g=\"\" name=\"transition6\" offset=\"0,0\" to=\"end1\"/></task></process>";
	</script>
</html>
