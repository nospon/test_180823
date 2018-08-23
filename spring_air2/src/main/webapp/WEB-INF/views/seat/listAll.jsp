<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
/*  #choice_seat {
	background: url(/seat/img/airplane.gif) no-repeat; 
	clear: both; 
	font-size: 0; 
	margin: 0 0 15px;
 	overflow: hidden;  
	position: relative; 
	width: 650px;
	height: 148px;
} */ 
  
 #choice_seat a
 {
	text-decoration: none;
}   
#tabs
 {
	display: none;
	list-style: none;
} 

#tabs a
{
	color: #00f;
	display: block;
	padding: 5px 0;
	text-align: center;
	width: 26px;
	text-decoration: none;
} 
#tabs li
 {
	display: block;
	float: left;
	padding: 0 0 5px;
	width: 26px;
} 

#choice_seat,
#choice_seat a
 {
	cursor: default;
} 

#tabs
{
	display: block;
}

#passenger_details
 {
	border-width: 0 1px 1px 0;
	clear: both;
	margin: 0 0 15px;
	width: 650px;
} 
#passenger_details th,
#passenger_details td
 {
	border-width: 1px 0 0 1px;
	padding: 10px;
	text-align: left;
}
 
#passenger_details tbody
  {
	color: #999;
	display: none;
} 
 
#passenger_details tbody.selected
 {
	display: table-row-group;
}  

#passenger_details
{
	margin-top: -20px;
}

#passenger_details tbody.selected
/* {
	display: block;
}   */
 
</style> 
<script>
	/*   function checkboxArr(){
		var checkArr=[];
		$('input:checkbox[name="check"]:checked').each(function(i) {
			checkArr.push($(this).val());
		});
		$.ajax({
			url:'/seat'
			,type:'post'
			,dataType:'text'
			,headers:{
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override"="POST"
			}
			,data:{
				valueArrTest:checkArr
			}
		});
	}    */
	/* 
 	//이거써야함!
   	  $(document).ready(function () {
        $('#checkbtn').click(function () {

          $('input:checkbox[name="check"]:checked').each(function(){
        	  var check=$(this).val();
        	  //alert(check);
        	  document.write($(this).val()+"<br>");	  
          });
        });
      });  
	 */
//인원수 제한 
	$(document).ready(function() {
	    // 체크박스들이 변경됬을때
	    $(":checkbox").change(function() {
	        var cnt = $("#person").val();
	         
	        // 셀렉트박스의 값과 체크박스중 체크된 갯수가 같을때, 다른 체크박스들을 disable 처리
	        if( cnt==$(":checkbox:checked").length ) {
	            $(":checkbox:not(:checked)").attr("disabled", "disabled");
	        }
	        // 체크된 갯수가 다르면 활성화 시킴
	        else {
	            $(":checkbox").removeAttr("disabled");
	        }
	    });
	     
	    // 셀렉트박스에서 다른 인원수를 선택하면 초기화 시킴
	    $("#person").change(function(){
	        $(":checkbox").removeAttr("checked");
	        $(":checkbox").removeAttr("disabled");
	    });
	    
	    //좌석
	    $('#passenger_details input, #passenger_details select').attr('disabled', 'disabled');
	    $('#tabs a:first, #passenger_details tbody:first').addClass('selected'); 
	    $('#tabs a').click(function()
				{
					// Switch class="selected" for tabs
					$('#tabs a').removeClass('selected');
					$(this).addClass('selected');

					// Asign value of the link target
					var thisTarget = $(this).attr('href');

					// Show target tbody and hide others
					$('#passenger_details tbody').removeClass('selected');
					$(thisTarget).addClass('selected');
					this.blur();
					return false;
				}
			);
	    
	    //좌석 선택시
	    $('#choice_seat a').click(function()
				{
					// Asign value of the link target
					var thisTarget = $(this).attr('href');

					// Show target tbody and hide others
					$('#passenger_details tbody').removeClass('selected');
					$(thisTarget).addClass('selected');

					// Swap out class="selected" for tab
					$('#tabs a').removeClass('selected');
					$('#tabs a[@href='+thisTarget+']').addClass('selected');

					// Assign the value of the parent <li class="*">
					var thisSeat = $(this).parent('li').attr('class');

					// Compare parent <li class="*"> against
					// <tr> in <table id="passenger_details">
					var thisRow = $('#passenger_details tr');
					for (var i = 0, j = thisRow.length; i < j; i++)
					{
						if (thisSeat == thisRow[i].className)
						{
							// Add class="selected" to row
							$(thisRow[i]).addClass('selected');

							// Enable inputs and selects so that they can be used
							$(thisRow[i]).children('td').children('input, select').removeAttr('disabled');
						}
						else if (thisSeat + ' selected' == thisRow[i].className)
						{
							// Remove class="selected" from row
							$(thisRow[i]).removeClass('selected');

							// Disable inputs and selects that aren't being used
							$(thisRow[i]).children('td').children('input').attr('disabled', 'disabled').val('');
							$(thisRow[i]).children('td').children('select').each(function()
								{
									this.disabled = true;
									this.selectedIndex = 0;
								}
							);
						}
					}
					
			$("#checkbtn").click(function(){
				var rowData = new Array();
				var tdArr = new Array();
				var checkbox = $("input[name=check]:checked");
				
				checkbox.each(function(i){
					var tr = checkbox.parent().parent().eq(i);
				});
			});
	});
});	 
//button
function f(){
	var c = confirm("해당 좌석을 선택하시겠습니까?");
	if(c==true){
		//choice_seat_list.style.display="block";
		location.href="/pay/payment"
	}
	else if(c==false){
		$("input:checkbox[name='check']").prop("checked", false); 
		//choice_seat_list.style.display="none";
		$(":checkbox").removeAttr("disabled");
		location.href="/seat/listAll";
	}
	
}
function r(){
	$("input:checkbox[name='check']").prop("checked", false); 
	$(":checkbox").removeAttr("disabled");
	//choice_seat_list.style.display="none";
}


//결제버튼
/* $(document).ready(function(){
    $("#goPayment").on("click",function(){	//수정
       	self.location="/seat/payment";    
	});
 }); */

</script>
<title>좌석 선택</title>

<div id="container1">
	
	<span>인원수 선택 : </span>
    <select id="person">
     	<option value="0">0명</option>
        <option value="1">1명</option>
        <option value="2">2명</option>
        <option value="3">3명</option>
        <option value="4">4명</option>
        
    </select>

	<table id="choice_seat">
		<tr>
			<td><a href='#row_1'>1A</a></td>
			<td><a href='#row_2'>2A</a></td>
			<td><a href='#row_3'>3A</a></td>
			<td><a href='#row_4'>4A</a></td>
			<td><a href='#row_5'>5A</a></td>
			<td><a href='#row_6'>6A</a></td>
			<td><a href='#row_7'>7A</a></td>
			<td><a href='#row_8'>8A</a></td>
			<td><a href='#row_9'>9A</a></td>
			<td><a href='#row_10'>10A</a></td>
			<td><a href='#row_11'>11A</a></td>
			<td><a href='#row_12'>12A</a></td>
			<td><a href='#row_13'>13A</a></td>
			<td><a href='#row_14'>14A</a></td>
			<td><a href='#row_15'>15A</a></td>
			<td><a href='#row_16'>16A</a></td>
			<td><a href='#row_17'>17A</a></td>
			<td><a href='#row_18'>18A</a></td>
			<td><a href='#row_19'>19A</a></td>
			<td><a href='#row_20'>20A</a></td>
		</tr>
		<tr>		
			<td><a href='#row_1'>1B</a></td>
			<td><a href='#row_2'>2B</a></td>
			<td><a href='#row_3'>3B</a></td>
			<td><a href='#row_4'>4B</a></td>
			<td><a href='#row_5'>5B</a></td>
			<td><a href='#row_6'>6B</a></td>
			<td><a href='#row_7'>7B</a></td>
			<td><a href='#row_8'>8B</a></td>
			<td><a href='#row_9'>9B</a></td>
			<td><a href='#row_10'>10B</a></td>
			<td><a href='#row_11'>11B</a></td>
			<td><a href='#row_12'>12B</a></td>
			<td><a href='#row_13'>13B</a></td>
			<td><a href='#row_14'>14B</a></td>
			<td><a href='#row_15'>15B</a></td>
			<td><a href='#row_16'>16B</a></td>
			<td><a href='#row_17'>17B</a></td>
			<td><a href='#row_18'>18B</a></td>
			<td><a href='#row_19'>19B</a></td>
			<td><a href='#row_20'>20B</a></td>
		</tr>	
		<tr>		
			<td><a href='#row_1'>1C</a></td>
			<td><a href='#row_2'>2C</a></td>
			<td><a href='#row_3'>3C</a></td>
			<td><a href='#row_4'>4C</a></td>
			<td><a href='#row_5'>5C</a></td>
			<td><a href='#row_6'>6C</a></td>
			<td><a href='#row_7'>7C</a></td>
			<td><a href='#row_8'>8C</a></td>
			<td><a href='#row_9'>9C</a></td>
			<td><a href='#row_10'>10C</a></td>
			<td><a href='#row_11'>11C</a></td>
			<td><a href='#row_12'>12C</a></td>
			<td><a href='#row_13'>13C</a></td>
			<td><a href='#row_14'>14C</a></td>
			<td><a href='#row_15'>15C</a></td>
			<td><a href='#row_16'>16C</a></td>
			<td><a href='#row_17'>17C</a></td>
			<td><a href='#row_18'>18C</a></td>
			<td><a href='#row_19'>19C</a></td>
			<td><a href='#row_20'>20C</a></td>
		</tr>	
		<tr>		
			<td><a href='#row_1'>1D</a></td>
			<td><a href='#row_2'>2D</a></td>
			<td><a href='#row_3'>3D</a></td>
			<td><a href='#row_4'>4D</a></td>
			<td><a href='#row_5'>5D</a></td>
			<td><a href='#row_6'>6D</a></td>
			<td><a href='#row_7'>7D</a></td>
			<td><a href='#row_8'>8D</a></td>
			<td><a href='#row_9'>9D</a></td>
			<td><a href='#row_10'>10D</a></td>
			<td><a href='#row_11'>11D</a></td>
			<td><a href='#row_12'>12D</a></td>
			<td><a href='#row_13'>13D</a></td>
			<td><a href='#row_14'>14D</a></td>
			<td><a href='#row_15'>15D</a></td>
			<td><a href='#row_16'>16D</a></td>
			<td><a href='#row_17'>17D</a></td>
			<td><a href='#row_18'>18D</a></td>
			<td><a href='#row_19'>19D</a></td>
			<td><a href='#row_20'>20D</a></td>
		</tr>	
		<tr>		
			<td><a href='#row_1'>1E</a></td>
			<td><a href='#row_2'>2E</a></td>
			<td><a href='#row_3'>3E</a></td>
			<td><a href='#row_4'>4E</a></td>
			<td><a href='#row_5'>5E</a></td>
			<td><a href='#row_6'>6E</a></td>
			<td><a href='#row_7'>7E</a></td>
			<td><a href='#row_8'>8E</a></td>
			<td><a href='#row_9'>9E</a></td>
			<td><a href='#row_10'>10E</a></td>
			<td><a href='#row_11'>11E</a></td>
			<td><a href='#row_12'>12E</a></td>
			<td><a href='#row_13'>13E</a></td>
			<td><a href='#row_14'>14E</a></td>
			<td><a href='#row_15'>15E</a></td>
			<td><a href='#row_16'>16E</a></td>
			<td><a href='#row_17'>17E</a></td>
			<td><a href='#row_18'>18E</a></td>
			<td><a href='#row_19'>19E</a></td>
			<td><a href='#row_20'>20E</a></td>
		</tr>	
		<tr>		
			<td><a href='#row_1'>1F</a></td>
			<td><a href='#row_2'>2F</a></td>
			<td><a href='#row_3'>3F</a></td>
			<td><a href='#row_4'>4F</a></td>
			<td><a href='#row_5'>5F</a></td>
			<td><a href='#row_6'>6F</a></td>
			<td><a href='#row_7'>7F</a></td>
			<td><a href='#row_8'>8F</a></td>
			<td><a href='#row_9'>9F</a></td>
			<td><a href='#row_10'>10F</a></td>
			<td><a href='#row_11'>11F</a></td>
			<td><a href='#row_12'>12F</a></td>
			<td><a href='#row_13'>13F</a></td>
			<td><a href='#row_14'>14F</a></td>
			<td><a href='#row_15'>15F</a></td>
			<td><a href='#row_16'>16F</a></td>
			<td><a href='#row_17'>17F</a></td>
			<td><a href='#row_18'>18F</a></td>
			<td><a href='#row_19'>19F</a></td>
			<td><a href='#row_20'>20F</a></td>
		</tr>	
	</table>

</div>

<div id=container2>
	<ol id="tabs">
		<li><a href="#row_1">1</a></li>
		<li><a href="#row_2">2</a></li>
		<li><a href="#row_3">3</a></li>
		<li><a href="#row_4">4</a></li>
		<li><a href="#row_5">5</a></li>
		<li><a href="#row_6">6</a></li>
		<li><a href="#row_7">7</a></li>
		<li><a href="#row_8">8</a></li>
		<li><a href="#row_9">9</a></li>
		<li><a href="#row_10">10</a></li>
		<li><a href="#row_11">11</a></li>
		<li><a href="#row_12">12</a></li>
		<li><a href="#row_13">13</a></li>
		<li><a href="#row_14">14</a></li>
		<li><a href="#row_15">15</a></li>
		<li><a href="#row_16">16</a></li>
		<li><a href="#row_17">17</a></li>
		<li><a href="#row_18">18</a></li>
		<li><a href="#row_19">19</a></li>
		<li><a href="#row_20">20</a></li>
	</ol>
	
	<form action="payment" method="post">
		<table id="passenger_details">
			<thead>
				<tr>
					<th scope="col">
						Seat
					</th>
					<th scope="col">
						Price
					</th>
					<th scope="col">
						Check
					</th>
				</tr>
			</thead>
			<tbody id="row_1">
				<tr class="seat_1 A">
					<td>
						<strong>1A</strong>
					</td>
					<td>
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_1A" name="check" value="1A"/>
					</td>
				</tr>
				<tr class="seat_1 B">
					<td>
						<strong>1B</strong>
					</td>
					<td>
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_1B" name="check" value="1B"/>
					</td>
				</tr>
					<tr class="seat_1 C">
					<td>
						<strong>1C</strong>
					</td>
					<td>
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_1C" name="check" value="1C"/>
					</td>
				</tr>
					<tr class="seat_1 D">
					<td>
						<strong>1D</strong>
					</td>
					<td>
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_1D" name="check" value="1D"/>
					</td>
				</tr>
					<tr class="seat_1 E">
					<td>
						<strong>1E</strong>
					</td>
					<td>
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_1E" name="check" value="1E"/>
					</td>
				</tr>
					<tr class="seat_1 F">
					<td>
						<strong>1F</strong>
					</td>
					<td>
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_1F" name="check" value="1F"/>
					</td>
				</tr>	
			</tbody>
			<tbody id="row_2">
				<tr class="seat_2 A">
					<td>
						<strong>2A</strong>
					</td>
					<td>
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_2A" name="check" value="2A"/>
					</td>
				</tr>
				<tr class="seat_2 B">
					<td>
						<strong>2B</strong>
					</td>
					<td>
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_2B" name="check" value="2B"/>
					</td>
				</tr>
					<tr class="seat_2 C">
					<td>
						<strong>2C</strong>
					</td>
					<td>
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_2C" name="check" value="2C"/>
					</td>
				</tr>
					<tr class="seat_2 D">
					<td>
						<strong>2D</strong>
					</td>
					<td>
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_2D" name="check" value="2D"/>
					</td>
				</tr>
					<tr class="seat_2 E">
					<td>
						<strong>2E</strong>
					</td>
					<td>
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_2E" name="check" value="2E"/>
					</td>
				</tr>
					<tr class="seat_2 F">
					<td>
						<strong>2F</strong>
					</td>
					<td>
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_2F" name="check" value="2F"/>
					</td>
				</tr>	
			</tbody>
			<tbody id="row_3">						
				<tr class="seat_3 A">		
					<td>	
						<strong>3A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_3A" name="check" value="3A"/>
					</td>	
				</tr>		
				<tr class="seat_3 B">		
					<td>	
						<strong>3B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_3B" name="check" value="3B"/>
					</td>
				</tr>		
					<tr class="seat_3 C">	
					<td>	
						<strong>3C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_3C" name="check" value="3C"/>
					</td>	
				</tr>		
					<tr class="seat_3 D">	
					<td>	
						<strong>3D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_3D" name="check" value="3D"/>
					</td>	
				</tr>		
					<tr class="seat_3 E">	
					<td>	
						<strong>3E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_3E" name="check" value="3E"/>
					</td>
				</tr>		
					<tr class="seat_3 F">	
					<td>	
						<strong>3F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_3F" name="check" value="3F"/>
					</td>	
				</tr>		
			</tbody>			
			<tbody id="row_4">						
				<tr class="seat_4 A">		
					<td>	
						<strong>4A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_4A" name="check" value="4A"/>
					</td>	
				</tr>		
				<tr class="seat_4 B">		
					<td>	
						<strong>4B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_4B" name="check" value="4B"/>
					</td>	
				</tr>		
					<tr class="seat_4 C">	
					<td>	
						<strong>4C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_4C" name="check" value="4C"/>
					</td>	
				</tr>		
					<tr class="seat_4 D">	
					<td>	
						<strong>4D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_4D" name="check" value="4D"/>
					</td>	
				</tr>		
					<tr class="seat_4 E">	
					<td>	
						<strong>4E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_4E" name="check" value="4E"/>
					</td>	
				</tr>		
					<tr class="seat_4 F">	
					<td>	
						<strong>4F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_4F" name="check" value="4F"/>
					</td>		
				</tr>		
			</tbody>			
			<tbody id="row_5">						
				<tr class="seat_5 A">		
					<td>	
						<strong>5A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_5A" name="check" value="5A"/>
					</td>	
				</tr>		
				<tr class="seat_5 B">		
					<td>	
						<strong>5B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_5B" name="check" value="5B"/>
					</td>	
				</tr>		
					<tr class="seat_5 C">	
					<td>	
						<strong>5C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_5C" name="check" value="5C"/>
					</td>	
				</tr>		
					<tr class="seat_5 D">	
					<td>	
						<strong>5D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_5D" name="check" value="5D"/>
					</td>		
				</tr>		
					<tr class="seat_5 E">	
					<td>	
						<strong>5E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_5E" name="check" value="5E"/>
					</td>	
				</tr>		
					<tr class="seat_5 F">	
					<td>	
						<strong>5F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_5F" name="check" value="5F"/>
					</td>		
				</tr>		
			</tbody>			
			<tbody id="row_6">						
				<tr class="seat_6 A">		
					<td>	
						<strong>6A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_6A" name="check" value="6A"/>
					</td>	
				</tr>		
				<tr class="seat_6 B">		
					<td>	
						<strong>6B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_6B" name="check" value="6B"/>
					</td>	
				</tr>		
					<tr class="seat_6 C">	
					<td>	
						<strong>6C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_6C" name="check" value="6C"/>
					</td>	
				</tr>		
					<tr class="seat_6 D">	
					<td>	
						<strong>6D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_6D" name="check" value="6D"/>
					</td>	
				</tr>		
					<tr class="seat_6 E">	
					<td>	
						<strong>6E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_6E" name="check" value="6E"/>
					</td>	
				</tr>		
					<tr class="seat_6 F">	
					<td>	
						<strong>6F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_6F" name="check" value="6F"/>
					</td>	
				</tr>		
			</tbody>			
			<tbody id="row_7">						
				<tr class="seat_7 A">		
					<td>	
						<strong>7A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_7A" name="check" value="7A"/>
					</td>		
				</tr>		
				<tr class="seat_7 B">		
					<td>	
						<strong>7B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_7B" name="check" value="7B"/>
					</td>	
				</tr>		
					<tr class="seat_7 C">	
					<td>	
						<strong>7C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_7C" name="check" value="7C"/>
					</td>	
				</tr>		
					<tr class="seat_7 D">	
					<td>	
						<strong>7D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_7D" name="check" value="7D"/>
					</td>	
				</tr>		
					<tr class="seat_7 E">	
					<td>	
						<strong>7E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_7E" name="check" value="7E"/>
					</td>	
				</tr>		
					<tr class="seat_7 F">	
					<td>	
						<strong>7F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_7F" name="check" value="7F"/>
					</td>	
				</tr>		
			</tbody>			
			<tbody id="row_8">						
				<tr class="seat_8 A">		
					<td>	
						<strong>8A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_8A" name="check" value="8A"/>
					</td>
				</tr>		
				<tr class="seat_8 B">		
					<td>	
						<strong>8B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_8B" name="check" value="8B"/>
					</td>
				</tr>		
					<tr class="seat_8 C">	
					<td>	
						<strong>8C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_8C" name="check" value="8C"/>
					</td>
				</tr>		
					<tr class="seat_8 D">	
					<td>	
						<strong>8D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_8D" name="check" value="8D"/>
					</td>	
				</tr>		
					<tr class="seat_8 E">	
					<td>	
						<strong>8E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_8E" name="check" value="8E"/>
					</td>	
				</tr>		
					<tr class="seat_8 F">	
					<td>	
						<strong>8F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_8F" name="check" value="8F"/>
					</td>
				</tr>		
			</tbody>			
			<tbody id="row_9">						
				<tr class="seat_9 A">		
					<td>	
						<strong>9A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_9A" name="check" value="9A"/>
					</td>	
				</tr>		
				<tr class="seat_9 B">		
					<td>	
						<strong>9B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_9B" name="check" value="9B"/>
					</td>		
				</tr>		
					<tr class="seat_9 C">	
					<td>	
						<strong>9C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_9C" name="check" value="9C"/>
					</td>	
				</tr>		
					<tr class="seat_9 D">	
					<td>	
						<strong>9D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_9D" name="check" value="9D"/>
					</td>	
				</tr>		
					<tr class="seat_9 E">	
					<td>	
						<strong>9E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_9E" name="check" value="9E"/>
					</td>		
				</tr>		
					<tr class="seat_9 F">	
					<td>	
						<strong>9F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_9F" name="check" value="9F"/>
					</td>	
				</tr>		
			</tbody>			
			<tbody id="row_10">						
				<tr class="seat_10 A">		
					<td>	
						<strong>10A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_10A" name="check" value="10A"/>
					</td>	
				</tr>		
				<tr class="seat_10 B">		
					<td>	
						<strong>10B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_10B" name="check" value="10B"/>
					</td>	
				</tr>		
					<tr class="seat_10 C">	
					<td>	
						<strong>10C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_10C" name="check" value="10C"/>
					</td>
				</tr>		
					<tr class="seat_10 D">	
					<td>	
						<strong>10D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_10D" name="check" value="10D"/>
					</td>
				</tr>		
					<tr class="seat_10 E">	
					<td>	
						<strong>10E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_10E" name="check" value="10E"/>
					</td>
				</tr>		
					<tr class="seat_10 F">	
					<td>	
						<strong>10F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_10F" name="check" value="10F"/>
					</td>
				</tr>		
			</tbody>			
			<tbody id="row_11">						
				<tr class="seat_11 A">		
					<td>	
						<strong>11A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_11A" name="check" value="11A"/>
					</td>	
				</tr>		
				<tr class="seat_11 B">		
					<td>	
						<strong>11B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_11B" name="check" value="11B"/>
					</td>
				</tr>		
					<tr class="seat_11 C">	
					<td>	
						<strong>11C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_11C" name="check" value="11C"/>
					</td>
				</tr>		
					<tr class="seat_11 D">	
					<td>	
						<strong>11D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_11D" name="check" value="11D"/>
					</td>
				</tr>		
					<tr class="seat_11 E">	
					<td>	
						<strong>11E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_11E" name="check" value="11E"/>
					</td>
				</tr>		
					<tr class="seat_11 F">	
					<td>	
						<strong>11F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_11F" name="check" value="11F"/>
					</td>
				</tr>		
			</tbody>			
			<tbody id="row_12">						
				<tr class="seat_12 A">		
					<td>	
						<strong>12A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_12A" name="check" value="12A"/>
					</td>
				</tr>		
				<tr class="seat_12 B">		
					<td>	
						<strong>12B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_12B" name="check" value="12B"/>
					</td>
				</tr>		
					<tr class="seat_12 C">	
					<td>	
						<strong>12C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_12C" name="check" value="12C"/>
					</td>	
				</tr>		
					<tr class="seat_12 D">	
					<td>	
						<strong>12D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_12D" name="check" value="12D"/>
					</td>
				</tr>		
					<tr class="seat_12 E">	
					<td>	
						<strong>12E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_12E" name="check" value="12E"/>
					</td>
				</tr>		
					<tr class="seat_12 F">	
					<td>	
						<strong>12F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_12F" name="check" value="12F"/>
					</td>
				</tr>		
			</tbody>			
			<tbody id="row_13">						
				<tr class="seat_13 A">		
					<td>	
						<strong>13A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_13A" name="check" value="13A"/>
					</td>
				</tr>		
				<tr class="seat_13 B">		
					<td>	
						<strong>13B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_13B" name="check" value="13B"/>
					</td>	
				</tr>		
					<tr class="seat_13 C">	
					<td>	
						<strong>13C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_13C" name="check" value="13C"/>
					</td>	
				</tr>		
					<tr class="seat_13 D">	
					<td>	
						<strong>13D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_13D" name="check" value="13D"/>
					</td>
				</tr>		
					<tr class="seat_13 E">	
					<td>	
						<strong>13E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_13E" name="check" value="13E"/>
					</td>
				</tr>		
					<tr class="seat_13 F">	
					<td>	
						<strong>13F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_13F" name="check" value="13F"/>
					</td>
				</tr>		
			</tbody>			
			<tbody id="row_14">						
				<tr class="seat_14 A">		
					<td>	
						<strong>14A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_14A" name="check" value="14A"/>
					</td>	
				</tr>		
				<tr class="seat_14 B">		
					<td>	
						<strong>14B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_14B" name="check" value="14B"/>
					</td>	
				</tr>		
					<tr class="seat_14 C">	
					<td>	
						<strong>14C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_14C" name="check" value="14C"/>
					</td>		
				</tr>		
					<tr class="seat_14 D">	
					<td>	
						<strong>14D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_14D" name="check" value="14D"/>
					</td>	
				</tr>		
					<tr class="seat_14 E">	
					<td>	
						<strong>14E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_14E" name="check" value="14E"/>
					</td>		
				</tr>		
					<tr class="seat_14 F">	
					<td>	
						<strong>14F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_14F" name="check" value="14F"/>
					</td>	
				</tr>		
			</tbody>			
			<tbody id="row_15">						
				<tr class="seat_15 A">		
					<td>	
						<strong>15A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_15A" name="check" value="15A"/>
					</td>		
				</tr>		
				<tr class="seat_15 B">		
					<td>	
						<strong>15B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_15B" name="check" value="15B"/>
					</td>	
				</tr>		
					<tr class="seat_15 C">	
					<td>	
						<strong>15C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_15C" name="check" value="15C"/>
					</td>	
				</tr>		
					<tr class="seat_15 D">	
					<td>	
						<strong>15D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_15D" name="check" value="15D"/>
					</td>	
				</tr>		
					<tr class="seat_15 E">	
					<td>	
						<strong>15E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_15E" name="check" value="15E"/>
					</td>		
				</tr>		
					<tr class="seat_15 F">	
					<td>	
						<strong>15F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_15F" name="check" value="15F"/>
					</td>		
				</tr>		
			</tbody>			
			<tbody id="row_16">						
				<tr class="seat_16 A">		
					<td>	
						<strong>16A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_16A" name="check" value="16A"/>
					</td>		
				</tr>		
				<tr class="seat_16 B">		
					<td>	
						<strong>16B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_16B" name="check" value="16B"/>
					</td>	
				</tr>		
					<tr class="seat_16 C">	
					<td>	
						<strong>16C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_16C" name="check" value="16C"/>
					</td>	
				</tr>		
					<tr class="seat_16 D">	
					<td>	
						<strong>16D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_16D" name="check" value="16D"/>
					</td>	
				</tr>		
					<tr class="seat_16 E">	
					<td>	
						<strong>16E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_16E" name="check" value="16E"/>
					</td>	
				</tr>		
					<tr class="seat_16 F">	
					<td>	
						<strong>16F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_16F" name="check" value="16F"/>
					</td>	
				</tr>		
			</tbody>			
			<tbody id="row_17">						
				<tr class="seat_17 A">		
					<td>	
						<strong>17A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_17A" name="check" value="17A"/>
					</td>	
				</tr>		
				<tr class="seat_17 B">		
					<td>	
						<strong>17B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_17B" name="check" value="17B"/>
					</td>	
				</tr>		
					<tr class="seat_17 C">	
					<td>	
						<strong>17C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_17C" name="check" value="17C"/>
					</td>		
				</tr>		
					<tr class="seat_17 D">	
					<td>	
						<strong>17D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_17D" name="check" value="17D"/>
					</td>	
				</tr>		
					<tr class="seat_17 E">	
					<td>	
						<strong>17E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_17E" name="check" value="17E"/>
					</td>	
				</tr>		
					<tr class="seat_17 F">	
					<td>	
						<strong>17F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_17F" name="check" value="17F"/>
					</td>		
				</tr>		
			</tbody>			
			<tbody id="row_18">						
				<tr class="seat_18 A">		
					<td>	
						<strong>18A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_18A" name="check" value="18A"/>
					</td>	
				</tr>		
				<tr class="seat_18 B">		
					<td>	
						<strong>18B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_18B" name="check" value="18B"/>
					</td>		
				</tr>		
					<tr class="seat_18 C">	
					<td>	
						<strong>18C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_18C" name="check" value="18C"/>
					</td>		
				</tr>		
					<tr class="seat_18 D">	
					<td>	
						<strong>18D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_18D" name="check" value="18D"/>
					</td>	
				</tr>		
					<tr class="seat_18 E">	
					<td>	
						<strong>18E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_18E" name="check" value="18E"/>
					</td>	
				</tr>		
					<tr class="seat_18 F">	
					<td>	
						<strong>18F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_18F" name="check" value="18F"/>
					</td>		
				</tr>		
			</tbody>			
			<tbody id="row_19">						
				<tr class="seat_19 A">		
					<td>	
						<strong>19A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_19A" name="check" value="19A"/>
					</td>	
				</tr>		
				<tr class="seat_19 B">		
					<td>	
						<strong>19B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_19B" name="check" value="19B"/>
					</td>		
				</tr>		
					<tr class="seat_19 C">	
					<td>	
						<strong>19C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_19C" name="check" value="19C"/>
					</td>		
				</tr>		
					<tr class="seat_19 D">	
					<td>	
						<strong>19D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_19D" name="check" value="19D"/>
					</td>	
				</tr>		
					<tr class="seat_19 E">	
					<td>	
						<strong>19E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_19E" name="check" value="19E"/>
					</td>		
				</tr>		
					<tr class="seat_19 F">	
					<td>	
						<strong>19F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_19F" name="check" value="19F"/>
					</td>	
				</tr>		
			</tbody>			
			<tbody id="row_20">						
				<tr class="seat_20 A">		
					<td>	
						<strong>20A</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>	
					<td>
						<input type="checkbox" class="Seat_20A" name="check" value="20A"/>
					</td>	
				</tr>		
				<tr class="seat_20 B">		
					<td>	
						<strong>20B</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_20B" name="check" value="20B"/>
					</td>		
				</tr>		
					<tr class="seat_20 C">	
					<td>	
						<strong>20C</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_20C" name="check" value="20C"/>
					</td>		
				</tr>		
					<tr class="seat_20 D">	
					<td>	
						<strong>20D</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_20D" name="check" value="20D"/>
					</td>		
				</tr>		
					<tr class="seat_20 E">	
					<td>	
						<strong>20E</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_20E" name="check" value="20E"/>
					</td>		
				</tr>		
					<tr class="seat_20 F">	
					<td>	
						<strong>20F</strong>
					</td>	
					<td>	
						<strong>70000</strong>
					</td>
					<td>
						<input type="checkbox" class="Seat_20F" name="check" value="20F"/>
					</td>		
				</tr>		
			</tbody>			
		</table>
			
		<button type="submit" name="checkbtn" id="checkbtn" value="checkbtn" onclick="f()">선택하기</button>
		<button type="button" name="resetbtn" id="resetbtn" value="resetbtn" onclick="r()">다시선택하기</button>
			
	</form>
</div>





