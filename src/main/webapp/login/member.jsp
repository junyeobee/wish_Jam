<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/wishJam/css/allFonts.css" />
<link rel="stylesheet" href="/wishJam/css/index.css" />
<meta charset="UTF-8">
<title>위시잼 - 회원가입</title>
<style>
	.join_wrap {
      width: 850px;
      padding: 20px 0;
      margin: 0 auto;
      font-family: 'Cafe24Ohsquareair';
    }
    
    .join_box {
      width: 850px;
      border-radius: 10px;
      text-align: center;
      padding-top: 45px;
    }
    
    .join_noti{
      color: #808080;
      margin: 30px 0px 10px 700px ;
    }
    
    .star_css{
  	  color: #ee6a7b;
    }
    
    .join_in_box{
      display: inline-flex;
      width: 100%;
      padding: 10px 10px;
    }
    
    .input_title{
      width: 15%;
      padding-top: 12px;
      text-align: left;
    }
    
    .input_val{
      width: 60%;
      height: 46px;
      border-radius: 4px;
      padding: 0px 11px 1px 15px;
    }
    
    .input_btn{
      padding: 0px 10px;
      width: 13%;
      height: 52px;
    }
    
    .join_input{
      width: 90%;
      height: 46px;
      border-radius: 4px;
      border: 1px solid rgb(221, 221, 221);
      font-weight: 400;
      font-size: 16px;
      line-height: 1.5;
      color: #808080;
      outline: none;
      box-sizing: border-box;
      padding: 0 20px;
    }
    
    .join_check{
      display: block;
      text-align: center;
      overflow: hidden;
      width: 100%;
      height: 52px;
      border-radius: 3px;
      color: #ff4900;
      background-color: #fff;
      border: 1px solid #ff4900;
    }
    
    .j_success{
      width: 300px;
      height: 55px;
      border: 1px solid #ff4900;
      border-radius: 10px;
      background: #ff4900;
      color: #fff;
      font-size: 18px;
      font-weight: 400;
      -webkit-appearance: none;
      cursor: pointer;
      font-family: 'Cafe24Ohsquareair';
    }
    
    .gender_css{
      display: flex;
      padding: 13px 0px 0px 11px;
      -webkit-box-pack: justify;
      flex-direction: row;
    }
    
    .join_gender{
      margin-left: 20px;
      margin-right: 20px;
    }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<div class="join_wrap">
	<div class="join_box">
		<h2 style="color:#ff4900;">회 원 가 입</h2>
		<div class="join_noti">
			<span class="star_css">*</span>
			필수입력사항
		</div>
		<hr style="border: 2px solid #a9a9a9;width:850px;">
		<form class="join_form" action="login.jsp" method="post">
		<div class="join_in_box">
			<div class="input_title">
				<label>아이디<span class="star_css">*</span></label>
			</div>
			<div class="input_val">
				<input type="text" class="join_input" name="user_id" value="아이디를 입력해주세요" onfocus="this.value='';">
			</div>
			<div class="input_btn">
				<input type="button" class="join_check" value="중복확인">
			</div>
		</div>
		<div class="join_in_box">
			<div class="input_title">
				<label>비밀번호<span class="star_css">*</span></label>
			</div>
			<div class="input_val">
				<input type="text" class="join_input" name="user_pwd" value="비밀번호를 입력해주세요" onfocus="this.value='';">
			</div>
			<div class="input_btn"></div>
		</div>
		<div class="join_in_box">
			<div class="input_title">
				<label>비밀번호확인<span class="star_css">*</span></label>
			</div>
			<div class="input_val">
				<input type="text" class="join_input" name="user_ckpwd" value="비밀번호를 한번 더 입력해주세요" onfocus="this.value='';">
			</div>
			<div class="input_btn"></div>
		</div>
		<div class="join_in_box">
			<div class="input_title">
				<label>이름<span class="star_css">*</span></label>
			</div>
			<div class="input_val">
				<input type="text" class="join_input" name="user_name" value="이름을 입력해주세요" onfocus="this.value='';">
			</div>
			<div class="input_btn"></div>
		</div>
		<div class="join_in_box">
			<div class="input_title">
				<label>휴대폰<span class="star_css">*</span></label>
			</div>
			<div class="input_val">
				<input type="text" class="join_input" name="user_tel" value="번호를 입력해주세요" onfocus="this.value='';">
			</div>
			<div class="input_btn">
				<input type="button" class="join_check" value="인증번호 받기">
			</div>
		</div>
		<div class="join_in_box">
			<div class="input_title">
				<label>주소<span class="star_css">*</span></label>
			</div>
			<div class="input_val">
				<input type="text" class="join_input" name="user_addr" value="주소를 입력해주세요" onfocus="this.value='';">
			</div>
			<div class="input_btn"></div>
		</div>
		<div class="join_in_box">
			<div class="input_title">
				<label>이메일<span class="star_css">*</span></label>
			</div>
			<div class="input_val">
				<input type="text" class="join_input" name="user_email" value="예시: wishjam@jam.com" onfocus="this.value='';">
			</div>
			<div class="input_btn">
				<input type="button" class="join_check" value="중복확인">
			</div>
		</div>
		<div class="join_in_box">
			<div class="input_title">
				<label>성별</label>
			</div>
			<div class="input_val">
			  <div class="gender_css">
				<input type="radio" class="join_gender" name="user_gender" value="남성">남성
				<input type="radio" class="join_gender" name="user_gender" value="여성">여성
			  </div>
			</div>
			<div class="input_btn"></div>
		</div>
		<div class="join_in_box">
			<div class="input_title">
				<label>생년월일</label>
			</div>
			<div class="input_val">
				<input type="text" class="join_input" name="user_bir" value="예시: YYYY/MM/DD" onfocus="this.value='';">
			</div>
			<div class="input_btn"></div>
		</div>
		<hr style="border: 1px solid #d3d3d3;width:850px;margin-left: 10px;">
		<div class="join_in_box">
			<div class="input_title">
				<label>이용약관동의<span class="star_css">*</span></label>
			</div>
		</div>
		<div style="margin:40px 275px 0px 275px;">
			<input type="submit" class="j_success" value="가입하기">
		</div>
		</form>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>