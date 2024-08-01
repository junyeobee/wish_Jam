<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/wishJam/css/allFonts.css" />
<link rel="stylesheet" href="/wishJam/css/index.css" />
<meta charset="UTF-8">
<title>위시잼</title>
<style>
	.cart_wrap {
      width: 1230px;
      padding: 20px 0;
      margin: 0 auto;
      font-family: 'Cafe24Ohsquareair';
    }
    
    .cart_box {
      width: 1230px;
      border-radius: 10px;
      text-align: left;
      padding-top: 45px;
    }
    
    .cart_in_box{
      display: flex;
      width: 100%;
      padding: 10px 10px;
      justify-content: space-between;
    }
    
    .cart_detail {
      width: 900px;
      text-align: left;
      padding-top: 15px;
      overflow: hidden; 
    }
    
    .cart_cost {
	  position: relative;
	  width: 300px;
	  min-height: 942px;
    }
    
    .detail_box{
      display: flex;
      -webkit-box-align: center;
      align-items: center;
      position: relative;
      padding: 20px 0px;
    }
    
    .detail_btn{
      margin-right: 10px;
    }
    
    .detail_img{
      margin-right: 10px;
    }
    
    .detail_alt{
      display: flex;
      flex-direction: column;
      width: 350px;
      margin-right: 20px;
    }
    
    .detail_count{
      display: inline-flex;
      flex-direction: row;
      -webkit-box-align: center;
      align-items: center;
      border: 1px solid rgb(221, 223, 225);
      width: 88px;
      border-radius: 3px;
    }
    
    .detail_cost{
      display: flex;
      flex-direction: column;
      width: 180px;
      text-align: right;
      word-break: break-all;
    }
    
    .detail_del{
      width: 30px;
      height: 30px;
      margin-left: 30px;
    }
    
    .count_css{
      display: inline-flex;
      width: 28px;
      height: 28px;
      border: none;
      text-align: center;
    }
    
    .detail_info{
      max-height: 54px;
      font-weight: 500;
      font-size: 16px;
      line-height: 22px;
      color: black;
    }
    
    .detail_altinfo{
      max-height: 38px;
      margin-top: 8px;
      font-size: 14px;
      line-height: 19px;
      color: rgb(153, 153, 153);
    }
    
    .detail_altcost{
      max-height: 38px;
      margin-top: 8px;
      font-size: 14px;
      line-height: 19px;
      color: rgb(153, 153, 153);
      text-decoration: line-through;
    }
    
    .cost_box{
      padding: 19px 18px 18px 20px;
      border: 1px solid #f2f2f2;
      background-color: #fff0f5;
    }
    
    .cost_detail{
      display: flex;
      -webkit-box-pack: justify;
      justify-content: space-between;
      padding-top: 5px;
      padding-bottom: 20px;
    }
    
    .cost_name{
      width: 100px;
      font-size: 16px;
      line-height: 24px;
      white-space: nowrap;
    }
    
    .cost_money{
      font-size: 18px;
      line-height: 24px;
      text-align: right;
    }
    
    .cost_alt{
      padding-left: 2px;
      font-size: 16px;
      font-weight: normal;
      vertical-align: bottom;
    }
    
    .cart_pay{
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
    
    .cart_noti{
      padding: 5px 0;
    }
    
    .noti_detail{
      padding-top: 4px;
      color: #666;
      font-size: 13px;
    }
    
    .test{
      padding-top: 20px;
      position: sticky;
    }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<div class="cart_wrap">
	<div class="cart_box">
		<h2>장 바 구 니</h2>
		<div class="cart_in_box">
			<div class="cart_detail">
				<div class="cart_dtop">
					<input type="checkbox"><span>전체선택 |</span>
					<button>선택삭제</button>
				</div>
				<hr>
				<div>
				<div class="cart_detail">
					<ul style="list-style-type: none;">
						<li class="detail_box">
							<input type="checkbox" class="detail_btn">
							<a href="../goodsDetail/detail.jsp" class="detail_img"><img src="../img/profile.png" style="width: 100px;height: 100px;"></a>
							<div class="detail_alt">
								<a href="../goodsDetail/detail.jsp" class="detail_alt" style="text-decoration: none;">
									<span class="detail_info">상품명</span>
									<span class="detail_altinfo">부가상품설명</span>
								</a>
							</div>
							<div class="detail_count">
								<button class="count_css">-</button>
								<div>1</div>
								<button class="count_css">+</button>
							</div>
							<div class="detail_cost"> 
								<span class="detail_info">2,000원</span>
								<span class="detail_altcost">3,500원</span>
							</div>
							<button class="detail_del">x</button>
						</li>
					</ul>
				</div>
				</div>
			</div>
			<div class="cart_cost">
				<div class="test">
				<div class="cost_box">
					<div class="cost_detail">
				  		<span class="cost_name">상품금액</span>
				  		<span class="cost_money">3,500
				  			<span class="cost_alt">원</span>
				  		</span>
				  	</div>
				  	<div class="cost_detail">
				  		<span class="cost_name">상품할인금액</span>
				  		<span class="cost_money">-1,500
				  			<span class="cost_alt">원</span>
				  		</span>
				  	</div>
				  	<div class="cost_detail">
				  		<span class="cost_name">배송비</span>
				  		<span class="cost_money">+3,000
				  			<span class="cost_alt">원</span>
				  		</span>
				  	</div>
				  	<hr>
				  	<div class="cost_detail">
				  		<span class="cost_name">결제예정금액</span>
				  		<span class="cost_money">5,000
				  			<span class="cost_alt">원</span>
				  		</span>
				  	</div>
				</div>
				<div style="margin-top:25px;">
					<input type="submit" class="cart_pay" value="결제하기">
					<ul class="cart_noti">
						<li class="noti_detail">[주문완료]상태일 경우만 주문 취소가 가능합니다.</li>
						<li class="noti_detail">[마이페이지 > 구매내역 상세페이지]에서 취소하실 수 있습니다.</li>
					</ul>
				</div>
				</div>
			</div>
		</div>
	</div>
</div>	
<%@ include file="../footer.jsp" %>
</body>
</html>