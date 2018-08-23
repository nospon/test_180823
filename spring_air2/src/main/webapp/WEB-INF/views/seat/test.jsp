<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
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
      });
</script>      
<title>Ajax Seat</title>
</head>

<body>
		
 <div id="container">
	
	<table id="choice_seat">
	<tr>
		<td><input type="checkbox" class="Seat_1A" name="check" value="1A"/>1A</td>
		<td><input type="checkbox" class="Seat_2A" name="check" value="2A"/>2A</td>
		<td><input type="checkbox" class="Seat_3A" name="check" value="3A"/>3A</td>
		<td><input type="checkbox" class="Seat_4A" name="check" value="4A"/>4A</td>
		<td><input type="checkbox" class="Seat_5A" name="check" value="5A"/>5A</td>
		<td><input type="checkbox" class="Seat_6A" name="check" value="6A"/>6A</td>
		<td><input type="checkbox" class="Seat_7A" name="check" value="7A"/>7A</td>
		<td><input type="checkbox" class="Seat_8A" name="check" value="8A"/>8A</td>
		<td><input type="checkbox" class="Seat_9A" name="check" value="9A"/>9A</td>
		<td><input type="checkbox" class="Seat_10A" name="check" value="10A"/>10A</td>
		<td><input type="checkbox" class="Seat_11A" name="check" value="11A"/>11A</td>
		<td><input type="checkbox" class="Seat_12A" name="check" value="12A"/>12A</td>
		<td><input type="checkbox" class="Seat_13A" name="check" value="13A"/>13A</td>
		<td><input type="checkbox" class="Seat_14A" name="check" value="14A"/>14A</td>
		<td><input type="checkbox" class="Seat_15A" name="check" value="15A"/>15A</td>
		<td><input type="checkbox" class="Seat_16A" name="check" value="16A"/>16A</td>
		<td><input type="checkbox" class="Seat_17A" name="check" value="17A"/>17A</td>
		<td><input type="checkbox" class="Seat_18A" name="check" value="18A"/>18A</td>
		<td><input type="checkbox" class="Seat_19A" name="check" value="19A"/>19A</td>
		<td><input type="checkbox" class="Seat_20A" name="check" value="20A"/>20A</td>
	</tr>
	<tr>		
		<td><input type="checkbox" class="Seat_1B" name="check" value="1B"/>1B</td>
		<td><input type="checkbox" class="Seat_2B" name="check" value="2B"/>2B</td>
		<td><input type="checkbox" class="Seat_3B" name="check" value="3B"/>3B</td>
		<td><input type="checkbox" class="Seat_4B" name="check" value="4B"/>4B</td>
		<td><input type="checkbox" class="Seat_5B" name="check" value="5B"/>5B</td>
		<td><input type="checkbox" class="Seat_6B" name="check" value="6B"/>6B</td>
		<td><input type="checkbox" class="Seat_7B" name="check" value="7B"/>7B</td>
		<td><input type="checkbox" class="Seat_8B" name="check" value="8B"/>8B</td>
		<td><input type="checkbox" class="Seat_9B" name="check" value="9B"/>9B</td>
		<td><input type="checkbox" class="Seat_10B" name="check" value="10B"/>10B</td>
		<td><input type="checkbox" class="Seat_11B" name="check" value="11B"/>11B</td>
		<td><input type="checkbox" class="Seat_12B" name="check" value="12B"/>12B</td>
		<td><input type="checkbox" class="Seat_13B" name="check" value="13B"/>13B</td>
		<td><input type="checkbox" class="Seat_14B" name="check" value="14B"/>14B</td>
		<td><input type="checkbox" class="Seat_15B" name="check" value="15B"/>15B</td>
		<td><input type="checkbox" class="Seat_16B" name="check" value="16B"/>16B</td>
		<td><input type="checkbox" class="Seat_17B" name="check" value="17B"/>17B</td>
		<td><input type="checkbox" class="Seat_18B" name="check" value="18B"/>18B</td>
		<td><input type="checkbox" class="Seat_19B" name="check" value="19B"/>19B</td>
		<td><input type="checkbox" class="Seat_20B" name="check" value="20B"/>20B</td>
	</tr>	
	<tr>		
		<td><input type="checkbox" class="Seat_1C" name="check" value="1C"/>1C</td>
		<td><input type="checkbox" class="Seat_2C" name="check" value="2C"/>2C</td>
		<td><input type="checkbox" class="Seat_3C" name="check" value="3C"/>3C</td>
		<td><input type="checkbox" class="Seat_4C" name="check" value="4C"/>4C</td>
		<td><input type="checkbox" class="Seat_5C" name="check" value="5C"/>5C</td>
		<td><input type="checkbox" class="Seat_6C" name="check" value="6C"/>6C</td>
		<td><input type="checkbox" class="Seat_7C" name="check" value="7C"/>7C</td>
		<td><input type="checkbox" class="Seat_8C" name="check" value="8C"/>8C</td>
		<td><input type="checkbox" class="Seat_9C" name="check" value="9C"/>9C</td>
		<td><input type="checkbox" class="Seat_10C" name="check" value="10C"/>10C</td>
		<td><input type="checkbox" class="Seat_11C" name="check" value="11C"/>11C</td>
		<td><input type="checkbox" class="Seat_12C" name="check" value="12C"/>12C</td>
		<td><input type="checkbox" class="Seat_13C" name="check" value="13C"/>13C</td>
		<td><input type="checkbox" class="Seat_14C" name="check" value="14C"/>14C</td>
		<td><input type="checkbox" class="Seat_15C" name="check" value="15C"/>15C</td>
		<td><input type="checkbox" class="Seat_16C" name="check" value="16C"/>16C</td>
		<td><input type="checkbox" class="Seat_17C" name="check" value="17C"/>17C</td>
		<td><input type="checkbox" class="Seat_18C" name="check" value="18C"/>18C</td>
		<td><input type="checkbox" class="Seat_19C" name="check" value="19C"/>19C</td>
		<td><input type="checkbox" class="Seat_20C" name="check" value="20C"/>20C</td>
	</tr>	
	<tr>		
		<td><input type="checkbox" class="Seat_1D" name="check" value="1D"/>1D</td>
		<td><input type="checkbox" class="Seat_2D" name="check" value="2D"/>2D</td>
		<td><input type="checkbox" class="Seat_3D" name="check" value="3D"/>3D</td>
		<td><input type="checkbox" class="Seat_4D" name="check" value="4D"/>4D</td>
		<td><input type="checkbox" class="Seat_5D" name="check" value="5D"/>5D</td>
		<td><input type="checkbox" class="Seat_6D" name="check" value="6D"/>6D</td>
		<td><input type="checkbox" class="Seat_7D" name="check" value="7D"/>7D</td>
		<td><input type="checkbox" class="Seat_8D" name="check" value="8D"/>8D</td>
		<td><input type="checkbox" class="Seat_9D" name="check" value="9D"/>9D</td>
		<td><input type="checkbox" class="Seat_10D" name="check" value="10D"/>10D</td>
		<td><input type="checkbox" class="Seat_11D" name="check" value="11D"/>11D</td>
		<td><input type="checkbox" class="Seat_12D" name="check" value="12D"/>12D</td>
		<td><input type="checkbox" class="Seat_13D" name="check" value="13D"/>13D</td>
		<td><input type="checkbox" class="Seat_14D" name="check" value="14D"/>14D</td>
		<td><input type="checkbox" class="Seat_15D" name="check" value="15D"/>15D</td>
		<td><input type="checkbox" class="Seat_16D" name="check" value="16D"/>16D</td>
		<td><input type="checkbox" class="Seat_17D" name="check" value="17D"/>17D</td>
		<td><input type="checkbox" class="Seat_18D" name="check" value="18D"/>18D</td>
		<td><input type="checkbox" class="Seat_19D" name="check" value="19D"/>19D</td>
		<td><input type="checkbox" class="Seat_20D" name="check" value="20D"/>20D</td>
	</tr>	
	<tr>		
		<td><input type="checkbox" class="Seat_1E" name="check" value="1E"/>1E</td>
		<td><input type="checkbox" class="Seat_2E" name="check" value="2E"/>2E</td>
		<td><input type="checkbox" class="Seat_3E" name="check" value="3E"/>3E</td>
		<td><input type="checkbox" class="Seat_4E" name="check" value="4E"/>4E</td>
		<td><input type="checkbox" class="Seat_5E" name="check" value="5E"/>5E</td>
		<td><input type="checkbox" class="Seat_6E" name="check" value="6E"/>6E</td>
		<td><input type="checkbox" class="Seat_7E" name="check" value="7E"/>7E</td>
		<td><input type="checkbox" class="Seat_8E" name="check" value="8E"/>8E</td>
		<td><input type="checkbox" class="Seat_9E" name="check" value="9E"/>9E</td>
		<td><input type="checkbox" class="Seat_10E" name="check" value="10E"/>10E</td>
		<td><input type="checkbox" class="Seat_11E" name="check" value="11E"/>11E</td>
		<td><input type="checkbox" class="Seat_12E" name="check" value="12E"/>12E</td>
		<td><input type="checkbox" class="Seat_13E" name="check" value="13E"/>13E</td>
		<td><input type="checkbox" class="Seat_14E" name="check" value="14E"/>14E</td>
		<td><input type="checkbox" class="Seat_15E" name="check" value="15E"/>15E</td>
		<td><input type="checkbox" class="Seat_16E" name="check" value="16E"/>16E</td>
		<td><input type="checkbox" class="Seat_17E" name="check" value="17E"/>17E</td>
		<td><input type="checkbox" class="Seat_18E" name="check" value="18E"/>18E</td>
		<td><input type="checkbox" class="Seat_19E" name="check" value="19E"/>19E</td>
		<td><input type="checkbox" class="Seat_20E" name="check" value="20E"/>20E</td>
	</tr>	
	<tr>		
		<td><input type="checkbox" class="Seat_1F" name="check" value="1F"/>1F</td>
		<td><input type="checkbox" class="Seat_2F" name="check" value="2F"/>2F</td>
		<td><input type="checkbox" class="Seat_3F" name="check" value="3F"/>3F</td>
		<td><input type="checkbox" class="Seat_4F" name="check" value="4F"/>4F</td>
		<td><input type="checkbox" class="Seat_5F" name="check" value="5F"/>5F</td>
		<td><input type="checkbox" class="Seat_6F" name="check" value="6F"/>6F</td>
		<td><input type="checkbox" class="Seat_7F" name="check" value="7F"/>7F</td>
		<td><input type="checkbox" class="Seat_8F" name="check" value="8F"/>8F</td>
		<td><input type="checkbox" class="Seat_9F" name="check" value="9F"/>9F</td>
		<td><input type="checkbox" class="Seat_10F" name="check" value="10F"/>10F</td>
		<td><input type="checkbox" class="Seat_11F" name="check" value="11F"/>11F</td>
		<td><input type="checkbox" class="Seat_12F" name="check" value="12F"/>12F</td>
		<td><input type="checkbox" class="Seat_13F" name="check" value="13F"/>13F</td>
		<td><input type="checkbox" class="Seat_14F" name="check" value="14F"/>14F</td>
		<td><input type="checkbox" class="Seat_15F" name="check" value="15F"/>15F</td>
		<td><input type="checkbox" class="Seat_16F" name="check" value="16F"/>16F</td>
		<td><input type="checkbox" class="Seat_17F" name="check" value="17F"/>17F</td>
		<td><input type="checkbox" class="Seat_18F" name="check" value="18F"/>18F</td>
		<td><input type="checkbox" class="Seat_19F" name="check" value="19F"/>19F</td>
		<td><input type="checkbox" class="Seat_20F" name="check" value="20F"/>20F</td>
	</tr>	
	<tr>
	<td colspan=20><button type="button" name="checkbtn" id="checkbtn" value="submit">submit</button>
	</td><tr>	
	</table>

	<ul id="seats">
	</ul> 
</div>
</body>
</html>

<script>
/* ---------------function-------------------- */
/*  function checkboxArr(){
		var checkArr=[];
		$('input:checkbox[name="check"]:checked').each(function(i) {
			checkArr.push($(this).val());
		});
}
		
function getAllList(){
	
	$.getJSON("/seats/all/"+air_name,function(data){
		console.log(data.length);
		var str="";
	
		$(data).each(
			function(){
				str+="<li data-seat_num='"+this.seat_num+"' class='seatLi'>"
				+ this.seat_num+":"+this.seat_YN 
				+ "</li>";
				});
			$("#seats").html(str);
	});
	
} */


/* -----------------------click------------------------ */
	
</script>