<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>发药详情-- -2015</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Css/style.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/ckform.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/common.js"></script>

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
    <script type="text/javascript">
	 $(function () {
		$('#newNav').click(function(){
				window.location.href="add.html";
		 });
    });
	
    	function checkall(){
			var alls=document.getElementsByName("check");
			var ch=document.getElementById("checkall");
			if(ch.checked){
				for(var i=0;i<alls.length;i++){
					alls[i].checked=true;	
				}	
			}else{
				for(var i=0;i<alls.length;i++){
					alls[i].checked=false;	
				}	
			}
		}
		function delAll(){
			var alls=document.getElementsByName("check");
			var ids=new Array();
			for(var i=0;i<alls.length;i++){
				if(alls[i].checked){
					ids.push(alls[i].value);
				}		
			}
			if(ids.length>0){
				if(confirm("确认操作?")){
					alert("成功!");
				}
			}else{
				alert("请选中要操作的项");
			}
		}
    $(function () {       
		$('#backid').click(function(){
				window.location.href="dispensing.jsp";
		 });
    });
    </script>
</head>
<body>
   
       <table class="table table-bordered table-hover definewidth m10" >
            <tr>
				<td width="10%" class="tableleft">病历号</td>
				<td>${b.medicalRecord}</td>
			</tr>
            <tr>
				<td width="10%" class="tableleft">姓名</td>
				<td>${b.registrationInfor.name}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">药品名称</td>
				<td>${b.drug.drugName}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">药品数量</td>
				<td>${b.dispensNum}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">已发数量</td>
				<td>${b.alreadSendNum}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">未发数量</td>
				<td>${b.notSendNum}</td>
			</tr>
            <tr>
				 <td colspan="2">
					<center>
						<button type="button" class="btn btn-success" name="backid"
							id="backid">返回列表</button>
					</center>
				</td> 
			</tr>
  </table>                                                                                           
</body>
</html>