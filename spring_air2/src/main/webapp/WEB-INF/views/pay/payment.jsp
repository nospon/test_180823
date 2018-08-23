<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$(".btn-pay").on("click",function(){	//수정
		$('#payinfotable').show();
		$(".btn-pay").hide();
	});
    $("#goback").on("click",function(){	//수정
		var c=confirm('취소하시겠습니까?');
        if(c == true) 
        	self.location="/pay/payment";    
	});
 });
</script>
<title>결제하기</title>
</head>
<body>

<div id = 'container'>
	<!--<form>-->
		<table id = 'paytable'>
			<tr>
				<th>이름</th>
				<td><input type="text" value="값 받아오기"/></td>
			</tr>
			<tr>
				<th>결제수단</th>
				<td>
                    <select>
						<option value="1">신용카드</option>
					</select>
				</td>
			</tr>
            <tr>
            	<td colspan=2>
                	<button id='btnpay' class='btn btn-pay'>선택하기</button>
                	<!--<input type='button' id='btnpay' value='확인' onclick='btnPay()'/>-->
                </td>
            </tr>
		</table>
        
        <table id='payinfotable' style='display:none'>
        	<tr>
            	<th>카드사</th>
                <td>
                	<select>
						<option value="1">BC카드</option>
                        <option value="2">삼성카드</option>
					</select>
                </td>
            </tr>
            <tr>
            	<th>카드번호</th>
                <td>
                	<input type="text" id='card_num' value="1234567890123456"/>
                </td>
            </tr>
            <tr>
            	<th>비밀번호</th>
                <td>
                	<input type="password" id='card_password' value="1234"/>
                </td>
            </tr>
            <td colspan=2>
                	<button id='gopay' class='btn btn-gopay'>결제하기</button> <!--<type="submit"-->
                	<button id='goback' class='btn btn-goback'>취소하기</button>
                	<!--<input type='button' id='btnpay' value='확인' onclick='btnPay()'/>-->
                </td>
        </table>
	<!--<</form>-->
</div>
</body>
</html>