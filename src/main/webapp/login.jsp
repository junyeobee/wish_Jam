<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>위시잼 - 로그인</title>
<style>
	.login_wrap {
      width: 600px;
      padding: 70px 0;
      margin: 0 auto;
    }
    
    .login_box {
      background: #fff0f5;
      width: 600px;
      border: 2px solid #fff0f5;
      border-radius: 10px;
      text-align: center;
      padding-top: 45px;
    }
    
    .input_txt {
      color: #808080;
      background: #fff;
      border: 1px solid #ccc;
      font-size: 18px;
      font-weight: 600;
      height: 50px;
      width: 320px;
      padding: 0 20px;
      border-radius: 10px;
      -webkit-appearance: none;
    }
    
    .l_check{
      width: 360px;
      height: 55px;
      border: 1px solid #ff4900;
      border-radius: 10px;
      background: #ff4900;
      color: #fff;
      font-size: 18px;
      font-weight: 400;
      -webkit-appearance: none;
      cursor: pointer;
    }
    
    .l_join{
      width: 360px;
      height: 55px;
      border: 1px solid #ff4900;
      border-radius: 10px;
      background: #fff;
      color: #ff4900;
      font-size: 18px;
      font-weight: 400;
      -webkit-appearance: none;
      cursor: pointer;
    }
    
    .l_saveid{
    	text-align: left;
    }
    
    .login_noti {
      color: #777;
      font-size: 15px;
      letter-spacing: -0.5px;
      line-height: 180%;
      margin-top: 30px;
      padding-bottom: 40px;
    }
    
    a {
      text-decoration: none;
    }
    
</style>
</head>
<body>
<div class="login_wrap">
	<div class="login_box">
		<h2 style="color:#ff4900;">L O G I N</h2>
		<div style="margin-top:50px;">
			<input type="text" class="input_txt" name="user_id" value="아이디를 입력해주세요" onfocus="this.value='';">
		</div>
		<div style="margin-top:10px;">
			<input type="password" class="input_txt" name="user_pwd" value="비밀번호 입력" onfocus="this.value='';">
		</div>
		<div style="margin-top:10px;margin-right:130px;text-align:right;">
			<input type="checkbox" class="l_saveid" value="on"><span style="color: #696969;">로그인 상태 유지</span>
		</div>
		<div style="margin-top:25px;">
			<input type="submit" class="l_check" value="로그인">
		</div>
		<div style="margin-top:10px;">
			<a href="member.jsp"><input type="button" class="l_join" value="회원가입"></a>
		</div>
		<div style="text-align:center; margin-top:15px; font-size:14px; ">
			<a href="#"><span style="color:#696969;">아이디 찾기</span></a>
			<span style="color:#696969; font-size:12px; vertical-align: 2px; margin:0 9px;">|</span>
			<a href="#"><span style="color:#696969;">비밀번호 찾기</span></a>
		</div>	
		<!-- 정책 -->
		<div class="login_noti">
			* 회원가입시 다양한 혜택을 누릴 수 있습니다 <br>
			* 하나의 휴대폰 번호로는 하나의 계정만 생성할 수 있습니다 
		</div>
	</div>
</div>
</body>
</html>