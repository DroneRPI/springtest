<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
 <style>
 #s {font-size:8pt}
 TABLE {font-size:9pt; font-family:굴림체}
 </style>
 <script>
function winOpen(){
	window.open("idChk.html","w","width=300, height=100, resizable=yes");
}
function nickChk(){window.open("nickChk.html","n","width=300, height=100")}
function zipChk(){window.open("zipChkClose.html","n","width=300, height=100")}
 </script>
</head>
<body>
<script language = "javascript">
function memChk() // 데이터 입력유무 확인 스크립트
{
  if(document.frm.memId.value == "")
  {
   alert("아이디를 입력하세요")
   document.frm.memId.focus();
   return false;
  }
  if(document.frm.memPwd.value == "")
  {
   alert("비밀번호를 입력하세요")
   document.frm.memPwd.focus();
   return false;
  }
  if(document.frm.memPwdChk.value == "")
  {
   alert("비밀번호를 다시한번 입력해주세요")
   document.frm.memPwdChk.focus();
   return false;
  }
  if(document.frm.memPwd.value != frm.memPwdChk.value) 
  {
   alert("비밀번호가 다릅니다.");
   document.frm.memPwd.value = ""; 
   document.frm.memPwdChk.value = ""; 
   document.frm.memPwd.focus(); 
   return false;
  }
  if(document.frm.memName.value == "")
  {
   alert("이름이 없는건가..") 
   document.frm.memName.focus(); 
   return false;
  }
  // 대화명을 이름으로 대체하는건 모르겠음... 
  if(document.frm.memJumin01.value == "" || frm.memJumin02.value == "")
  {
   alert("주민등록번호를 입력하세요") 
   document.frm.memJumin01.focus(); 
   return false;
  }
  if(document.frm.memBirth01.value == "" || frm.memBirth02.value == "" || frm.memBirth03.value == "")
  {
   alert("생년월일을 입력하세요.") 
   document.frm.memBirth01.focus(); 
   return false;
  }
  /* if(document.frm.memSung.value == "")
  {
   alert("성별을 선택하세요") 
   return false; 
  } 라디오버튼값 체크 유무 확인 방법??*/
  if(document.frm.memEmail.value == "")
  {
   alert("이메일을 입력하세요") 
   document.frm.memEmail.focus(); 
   return false;
  }
  // 메일 수신은 수신동의 selected

  if (document.frm.memTel01.value == "")
  {
   alert("전화번호를 선택하세요")
   return false;
  }
  if (document.frm.memTel02.value == "")
  {
   alert("전화번호를 입력하세요")
   document.frm.memTel02.focus();
   return false;
  }
  if (document.frm.memTel03.value == "")
  {
   alert("전화번호를 입력하세요")
   document.frm.memTel03.focus();
   return false;
  }
  if (document.frm.memMobile01.value == "Not")
  {
   alert("핸드폰번호를 선택하세요")
   return false;
  }
  if (document.frm.memMobile02.value == "")
  {
   alert("핸드폰번호를 입력하세요")
   document.frm.memMobile02.focus();
   return false;
  }
  if (document.frm.memMobile03.value == "")
  {
   alert("핸드폰번호를 입력하세요")
   document.frm.memMobile03.focus();
   return false;
  }
  /* if (document.frm.memHobby.value == "" )
  {
   alert("취미를 선택해주세요")
   return false;
  } 체크박스값 체크여부 확인방법?? */

  document.frm.submit(); // 버튼으로 쓸 땐 return true; 대신 이걸 쓰고 form시작 구문에 onsubmit="return memChk()" 는 불필요하여 삭제

 } 
 </script>

<form action="#" method="post" name="frm"> 

<table border="0" cellpadding="0" cellspacing="0"> <!-- cellpadding과 cellspacing 값을 0으로 초기화 해주지 않으면 테이블내부의 행/열 간 간격이 벌어진다. -->
<caption align="left">
 <tr height="35">
  <td align="right" width="100" bgcolor="#efefef">아&nbsp;이&nbsp;디&nbsp;</td>
  <td valign="top">&nbsp;&nbsp;</td>
  <td width="600">  
   <input type="text" name="memId" size="12">&nbsp;&nbsp;
   <input type="button" value="중복확인" onClick="winOpen()"><br>  
  </td>
 </tr>

 <tr height="35">
  <td align="right" bgcolor="#efefef">비밀번호&nbsp;</td>
  <td valign="top">&nbsp;&nbsp;</td>
  <td>
   <input type="password" name="memPwd" size="13"><br>
  </td> <!-- 비밀번호 문자와 숫자 혼합사용 체크....? -ㅅ-a -->
 </tr>

 <tr height="35">
  <td align="right" bgcolor="#efefef">비번확인&nbsp;</td>
  <td valign="top">&nbsp;&nbsp;</td>
  <td>
   <input type="password" name="memPwdChk" size="13">
  </td>
 </tr> 

 <tr height="35">
  <td align="right" bgcolor="#efefef">이<font color="white">....</font>름&nbsp;</td>
  <td valign="top">&nbsp;&nbsp;</td>
  <td>
  <input type="text" name="memName" size="7" maxlength="28">
  </td>
 </tr>
 
 
 <tr height="35">
  <td align="right" bgcolor="#efefef">E - mail&nbsp;</td>
  <td valign="top">&nbsp;&nbsp;</font></td>
  <td>
   <input type="text" name="memEmail" size="20">
  </td>
 </tr>

 <tr height="35">
  <td align="right" bgcolor="#efefef">핸 드 폰&nbsp;</td>
  <td valign="top">&nbsp;&nbsp;</font></td>
  <td>
   <select name="memMobile01">
   <option value="010">010</option>
   <option value="011">011</option>
   <option value="016">016</option>
   <option value="017">017</option>
   <option value="018">018</option>
   <option value="019">019</option>
   </select>-
   <input type="text" name="memMobile02" size="5" maxlength="4">
   -
   <input type="text" name="memMobile03" size="5" maxlength="4"> 
  </td> <!-- 숫자만 입력가능?? -.-a -->
 </tr>


 <tr align="left">
  <td colspan="3">
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="button" value="회원등록" onClick="memChk()">

   <font color="white">...</font>
  </td>
 </tr>
</table>
</form>

</body>
</html>