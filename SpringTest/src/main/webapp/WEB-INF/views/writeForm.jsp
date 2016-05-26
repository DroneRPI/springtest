
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
 <style>
 #s {font-size:8pt}
 TABLE {font-size:9pt; font-family:굴림체}
 </style>
	<title> SringBoard</title>
	<script type="text/javascript"> 
		function doSubmit() {
			if(boardFrm.id.value == "") {
				alert("아이디를 입력해주세요.");
				return;
			}
			if(boardFrm.pwd.value == "") {
				alert("비밀번호를 입력해주세요.");
				return;
			}
			if(boardFrm.names.value == "") {
				alert("이름을 입력해주세요.");
				return;
			}
			if(boardFrm.email.value == "") {
				alert("이메일을 입력해주세요.");
				return;
			}
			if(boardFrm.phone.value == "") {
				alert("핸드폰 번호를 입력해주세요.");
				return;
			}
			
			boardFrm.submit()
		}
		
	</script>

</head>
<h1>
    Member Add
</h1>
<table border="0" cellpadding="0" cellspacing="0">
<form name="boardFrm" action="writeProc.do" method="post">
<caption align="left">
<tr height="35">
	<td align="right" width="100" bgcolor="#efefef">아&nbsp;이&nbsp;디&nbsp;</td>
	<td valign="top">&nbsp;&nbsp;</td>
	<td width="600">
	 <input type="text" size="12" name="id">  
     <input type="button" value="중복확인" onClick="winOpen()"><br>  
    </td>
</tr>




<tr height="35">
	  <td align="right" bgcolor="#efefef">비밀번호&nbsp;</td>
      <td valign="top">&nbsp;&nbsp;</td>
	<td>
		<input type="password" size="13" name="pwd"><br>
	</td>	
</tr>



 <tr height="35">
  <td align="right" bgcolor="#efefef">이<font color="white">....</font>름&nbsp;</td>
  <td valign="top">&nbsp;&nbsp;</td>
  <td>
  <input type="text" size="7" name="names">
  </td>
 </tr>



 <tr height="35">
  <td align="right" bgcolor="#efefef">E - mail&nbsp;</td>
  <td valign="top">&nbsp;&nbsp;</font></td>
  <td>
   <input type="text" name="email" size="20">
  </td>
 </tr>



 <tr height="35">
  <td align="right" bgcolor="#efefef">핸 드 폰&nbsp;</td>
  <td valign="top">&nbsp;&nbsp;</font></td>
  <td>
   <input type="text" name="phone" size="20">
  </td>
 </tr>

<tr align="left">
	<td colspan="3">
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="button" value="회원추가" onclick="doSubmit()">
		<font color="white">...</font>
	</td>	
</tr>
</form>
</table>
</html>
