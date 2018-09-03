<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<link rel="icon" type="image/ico"
   href="../resources/image/main_images/Favicon.ico" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/scedule.css"
   type="text/css">



<link rel="stylesheet"
   href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<title>항공권 예매 | 스프링에어</title>
</head>
<style type="text/css">
body {
   background-image: url('../resources/image/main_images/main_header.png'),
      url('../resources/image/main_images/main_footer2.png');
   background-repeat: repeat-x;
   background-position: left top, left bottom;
}

/* 제목 마진간격 속성*/
h3, h4 {
   margin-left: 100px;
}

/*첫번째 테이블 관련 속성 -> reservation table */
.reservation_table1 {
   border-collapse: collapse;
   font-size: 14px;
   border: 1px solid #D8D6CA; /* 첫번째테이블 테두리 */
   border-top: 3px solid #fe5674;
   margin-left: 100px;
   width: 1100px;
   background-color: rgba(216, 214, 202, 0.02); /* 첫번째 테이블 배경색 */
}

/* 간격 조금 띄운거랑 정렬방법 */
.reservation_td {
   padding: 15px;
   text-align: left;
}

th, td {
   padding: 5px;
   text-align: left;
}

.input_type {
   width: 200px;
   padding: 12px 10px;
   margin: 10px 0; /*form 사이 간격*/
   display: inline-block;
   border: 1px solid #D8D6CA;
   border-radius: 0px;
   box-sizing: border-box;
   background-color: rgba(216, 214, 202, 0.2);
}

.alternate {
   width: 200px;
   padding: 12px 10px;
   margin: 10px 0; /*form 사이 간격*/
   display: inline-block;
   border-radius: 0px;
   box-sizing: border-box;
   background-color: rgba(0, 0, 0, 0);
}

input[type=number] {
   width: 116.5px;
   height: 35px;
   padding-left: 5px;
   font-size: 15px;
   color: #485759;
   border: 1px solid #D8D6CA;
   background-color: rgba(216, 214, 202, 0.2);
}

.style select {
   width: 200px;
   height: 35px;
   padding-left: 5px;
   font-size: 15px;
   color: #485759;
   border: 1px solid #D8D6CA;
   background-color: rgba(216, 214, 202, 0.2);
}

/* 항공권 예매 버튼속성*/
.button {
   width: 204px;
   background-color: #fe5674;
   color: white;
   padding: 18px 18px;
   margin: 8px 0;
   border: none;
   border-radius: 4px;
   cursor: pointer;
   margin-left: 502px;
   margin-top: 30px;
}

.button:hover {
   background-color: #fe123c;
}

.button1 {
   width: 360px;
   background-color: #fe5674;
   color: white;
   padding: 18px 18px;
   margin: 8px 0;
   border: none;
   border-radius: 4px;
   cursor: pointer;
   margin-left: 880px;
   margin-bottom: -2700px;
   margin-top: -1600px;
}

.button1:hover {
   background-color: #fe123c;
}

/* ----- 첫번째 테이블 끝 */

/* 달력색 */
.ui-datepicker-calendar>tbody td:first-child a {
   COLOR: #f00;
}

.ui-datepicker-calendar>tbody td:last-child a {
   COLOR: blue;
}

.alternate {
   border: 0 solid black;
   text-align: center
}

/*1구간 2구간 테이블 속성 -> section_table */
.section_title {
   width: 500px;
   height: 25px;
   font-weight: bold;
   color: #252D2E;
   margin-bottom: -15px;
   margin-left: -100px;   
}

.section_title img {
   margin-bottom: 8px;
}

.section_table {
   border-collapse: collapse;
   font-size: 14px;
   border: 1px solid rgba(216, 214, 202, 0.7);
   border-top: 3px solid #fe5674;
   width: 100%;
   background-color: rgba(216, 214, 202, 0.05);
}

#section_center{
   text-align: center;
}

.section_th {
   border-bottom: 1px solid rgba(224, 112, 136, 0.4);
   color: #485759;
}

.section_th1 {
   border-bottom: 1px solid rgba(224, 112, 136, 0.4);
   color: #485759;
   padding: 10px;
}

.section_th, .section_th1, .section_th2 {
   background: rgba(216, 214, 202, 0.2);
}

/*투명 적용 테이블 속성*/
.section_th2 {
   border-bottom: 1px solid rgba(224, 112, 136, 0.4);
   color: rgba(0, 0, 0, 0);
   width: 2px;
}

.section_th3 {
   border-left: 1px solid rgba(216, 214, 202, 0.7);
   color: rgba(0, 0, 0, 0);
   padding: 10px;
}

/*투명 적용 테이블 속성*/
.section_td {
   color: #617678;
}

/*가는 여정 오는 여정 테이블 plan_table */
.plan_table {
   border-collapse: collapse;
   font-size: 14px;
   border: 1px solid #D8D6CA;
   border-top: 3px solid #fe5674;
   width: 360px;
   background-color: rgba(216, 214, 202, 0.01);
   color: #485759;
   margin-top: 22px;
}

.plan_table2 {
   border-collapse: collapse;
   font-size: 14px;
   border: 1px solid #D8D6CA;
   border-top: 3px solid #fe5674;
   width: 360px;
   background-color: rgba(216, 214, 202, 0.01);
   color: #485759;
   margin-top: -15px;
}

.plan_th {
   background: rgba(216, 214, 202, 0.2);
   border-bottom: 1px solid rgba(224, 112, 136, 0.4);
   color: #252D2E;
   font-weight: bold;
}

.plan_th1 {
   border-top: 1px dashed rgba(216, 214, 202, 0.6);
   border-left: 1px solid rgba(0, 0, 0, 0);
   border-bottom: 1px dashed rgba(216, 214, 202, 0.6);
}

.plan_th2 {
   border-top: 1px dashed rgba(216, 214, 202, 0.6);
   border-right: 1px solid rgba(0, 0, 0, 0);
   border-bottom: 1px dashed rgba(216, 214, 202, 0.6);
}

.plan_th3 {
   border: 1px solid #D8D6CA;
   border-top: 3px solid #fe5674;
   border-right: 1px solid rgba(0, 0, 0, 0);
   background-color: rgba(216, 214, 202, 0.2);
}

.plan_th4 {
   border: 1px solid #D8D6CA;
   border-top: 3px solid #fe5674;
   border-left: 1px solid rgba(0, 0, 0, 0);
   background-color: rgba(216, 214, 202, 0.2);
}

/*가는여정 오는여정 크기 및 고정관련 속성 조절*/
.content_section1 {
   float: left;
   height: 2000px;
   width: 725px;
   margin-left: 100px;
}

.content_section2 {
   float: left;
   height: 2000px;
   width: 375px;
}


.sidenav1 {
   width: 375px;
   margin-top: -13px;
   margin-left: 18px;
}

.sidenav2 {
   width: 375px;
   margin-top: 50px;
   margin-left: 18px;
}

/* 1구간 2구간 색상*/
.span_section {
   color: #fe5674;
   font-weight: bold;
}

.save {
   display: none;
}
</style>
<body>
   <%@include file="../main/header.jsp"%>
   <br>
   <br>
   <br>
   <h3>
      <b>국내선 예약</b>
   </h3>

   <div class="style">
      <table class="reservation_table1">
         <tr>
            <td class="reservation_td" colspan="4">&nbsp;</td>
         </tr>
         <tr>
            <td class="reservation_td" colspan="4">&nbsp;&nbsp; <label>
                  <input type="radio" class="w3-radio" id="round trip" name="trip"
                  onclick="trip(1);" checked> 왕복
            </label> &nbsp; <label> <input type="radio" class="w3-radio"
                  id="one-way" name="trip" onclick="trip(2);"> 편도
            </label>
            </td>
         </tr>


         <tr>
            <form name=form>
               <td class="reservation_td">&nbsp;&nbsp;출발지 <select
                  name="departures" id="departures" class="departures"
                  onchange="change(this.value);">
                  
                     <option value="1">------한국------</option>
                     <option value="2">부산</option>
                     <option value="3">서울(김포)</option>
                     <option value="4">제주</option>
                     <option value="5"></option>
                     <option value="6">------일본------</option>
                     <option value="7">도쿄(나리타)</option>
                     <option value="8">오사카(간사이)</option>
                     <option value="9">후쿠오카</option>
                     <option value="10"></option>
                     <option value="11">------중국------</option>
                     <option value="12">칭다오</option>
                     <option value="13">장자제</option>
                     <option value="14"></option>
                     <option value="15">------대만------</option>
                     <option value="16">타이베이</option>
                     <option value="17">가오슝</option>

               </select>
               </td>
               <td class="reservation_td">도착지 <select name="destination"
                  id="destination" class="destination">
                     <option></option>
                     
               </select>
               </td>
            </form>



            <td class="reservation_td">성인<input id="adult" type="number"
               name="adult" value="1" max="2" min="1"></td>
            <td class="reservation_td">소아 <input type="number" id="child"
               value="0" onchange="pay();" min="0" max="2"></td>
         </tr>





         <tr>
            <td class="reservation_td">&nbsp;&nbsp;가는날 <label> <input
                  type="text" id="from" class="input_type" name="from"></label></td>
            <div id=comingday>
               <td "reservation_td">&nbsp;&nbsp;오는날 <label><input type="text" class="input_type" id="to" name="to"></label></td>
            </div>
            <td colspan="2">&nbsp;</td>
         </tr>

      </table>
      <input class="button" type="button" value="항공권 검색" id="button"
         onclick="buttonclick();">
   </div>
   <br>
   <br>

   <div id="section" style="display: none">
      <div class="content_section1">
         <!-- 장소출력 -->
         <br> <br>
         <table class="section_title">
            <tr>
               <td><h4>
                     <img src="../resources/image/main_images/airplain.png"
                        height="25px" width="35px"> &nbsp;&nbsp;<span
                        class="span_section">1구간</span>
                  </h4></td>
               <td><span id=departuresprint></span> <img
                  src="../resources/image/main_images/bg_to_from.png"> <span
                  id=destinationprint></span></td>
            </tr>
         </table>
         <table class="section_table" id=Departureschedule>
            <tr>
               <th class="section_th2">번호</th>
               <th class="section_th">출발-도착시간</th>
               <th class="section_th">항공편</th>
               <th class="section_th">정상운임(원)</th>
               <th class="section_th1">선택</th>
            </tr>
            <tr>
            <td id="section_center" colspan="5" class="no">운항일정이 없습니다</td>
            </tr>
         </table>
         <br> <br>
         <table class="section_title">
            <tr>
               <td><h4>
                     <img src="../resources/image/main_images/airplain.png"
                        height="25px" width="35px">&nbsp;&nbsp; <span
                        class="span_section">2구간</span>
                  </h4></td>
               <td><span id=destinationprint2></span> <img
                  src="../resources/image/main_images/bg_to_from.png"> <span
                  id=departuresprint2></span></td>
            </tr>
         </table>
         <table class="section_table" id=ArrivalSchedule>
            <tr>
               <th class="section_th2">번호</th>
               <th class="section_th">출발-도착시간</th>
               <th class="section_th">항공편</th>
               <th class="section_th">정상운임(원)</th>
               <th class="section_th1">선택</th>
            </tr>
            <tr>
            <td id="section_center" colspan="5" class="no">운항일정이 없습니다</td>
            </tr>
         </table>
      </div>
   </div>
   <div id="d" style="display: none">

      <br> <br> <br> <br>
      <div class="content_section2">
         <div class="sidenav1">
            <table class="plan_table">
               <tr>
                  <th class="plan_th" colspan="4">가는 여정</th>
               </tr>
               <tr>
                  <th colspan="4"><span id=departuresprint3></span>-<span
                     id=destinationprint3></span><br> <input type="text"
                     id="alternate" class=alternate size=15> </span><span id=d_time></th>
               </tr>
               <tr>
                  <th class="plan_th2">성인</th>
                  <th class="plan_th2" id="adult_num">명</th>
                  <th class="plan_th1">&nbsp;</th>
                  <th class="plan_th1" id="d_price">(원)</th>
               </tr>

            </table>
         </div>

         <div id="a" style="display: none">
            <div class="sidenav2">

               <table class="plan_table2">
                  <tr>
                     <th class="plan_th" colspan="4">오는 여정</th>
                  </tr>
                  <tr>
                     <th colspan="4"><span id=destinationprint4></span>-<span
                        id=departuresprint4></span><br> <input type="text"
                        id="alternate2" class=alternate size=15> </span><span id=a_time></th>
                  </tr>
                  <tr>
                     <th class="plan_th2">성인</th>
                     <th class="plan_th2" id="adult_num2">명</th>
                     <th class="plan_th1">&nbsp;</th>
                     <th class="plan_th1" id="a_price"></th>
                  </tr>
                  <tr>
                     <th class="plan_th3" colspan="3">지불 총액</th>
                     <th class="plan_th4" id=total></th>
                  </tr>
               </table>
            </div>
         </div>
      </div>
      <div class="sidenav3">
         <div class="save">
            <form role="ScheduleVO" action="save" method="post">
               <table>
                  <tr>
                     <td><input type=text id="d_num" name="sc_num1"></td>
                     <td><input type=text id="d_airname" name="air_name1"></td>
                  </tr>
                  <tr>
                     <td><input type=text id="a_num" name="sc_num2"></td>
                     <td><input type=text id="a_airname" name="air_name2"></td>
               
               </table>
         </div>

         <input class="button1" type="submit" value="다음단계">
         </form>
      </div>



      <br>

      <%@include file="../main/footer.jsp"%>
      <script>
         /* 버튼클릭시 */
         var click = false;
         $("#button")
               .click(
                     function() {
                        
                        var departures = $(
                              "#departures option:selected").text();
                        var destination = $(
                              "#destination option:selected").text();
                        var from = $("#from").val();
                        var to = $("#to").val();

                        $
                              .ajax({
                                 type : "GET", // 전송방식을 지정한다 (POST,GET)
                                 url : "listAll/" + departures + "/"
                                       + destination + "/" + from, // 호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
                                 dataType : "json", // 호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
                                 error : function(request, status,
                                       error) {
                                    alert("잘못된 요청"); // 실패 시 처리
                                 },
                                 success : function(data) {
                                    
                                    
                                    var str = '';
                              
                                    $(data.list).each(
                                                function() {
                                                   
                                                   str += '<tr>';
                                                   str += '<td class="section_th3"><label class="d_num">'
                                                         + this.sc_num
                                                         + '</td>'
                                                         + '<td><label class="d_time">'
                                                         + this.de_time
                                                         + "-"
                                                         + this.ar_time
                                                         + '</label></td>'
                                                         + '<td><label class="d_airname">'
                                                         + this.air_name
                                                         + '</td>'
                                                         + '<td><label class="d_price">'
                                                         + this.tic_price
                                                         + '</td>'
                                                         + '<td><input type="radio"  class="w3-radio" name="Departure" id="Departure" onchange="Departure(this);" onclick="d_click();"></td>';
                                                   str += '</tr>';
                                                
                                                   $(".no").hide();
                                                   
                                                });

                                    $("#Departureschedule").append(
                                          str);
                                 }

                              });
                        $
                              .ajax({
                                 type : "GET", // 전송방식을 지정한다 (POST,GET)
                                 url : "listAll/" + destination
                                       + "/" + departures + "/"
                                       + to, // 호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
                                 dataType : "json", // 호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
                                 error : function(request, status,
                                       error) {
                                    alert("검색 결과가 없습니다"); // 실패 시 처리
                                 },
                                 success : function(data) {
                                    //var data = data.list;
                                    var str = '';
                                    
                                    $(data.list)
                                          .each(
                                                function() {
                                                   str += '<tr>';
                                                   str += '<td class="section_th3"><label class="a_num">'
                                                         + this.sc_num
                                                         + '</td>'
                                                         + '<td><label class="a_time">'
                                                         + this.de_time
                                                         + "-"
                                                         + this.ar_time
                                                         + '</label></td>'
                                                         + '<td><label class="a_airname">'
                                                         + this.air_name
                                                         + '</td>'
                                                         + '<td><label class="a_price">'
                                                         + this.tic_price
                                                         + '</td>'
                                                         + '<td><input type="radio"  class="w3-radio" name="Arrival" id="Arrival" onchange="Arrival(this);" onclick="a_click();"></td>';
                                                   str += '</tr>';
                                             
                                                   $(".no").hide();
                                                });

                                    $("#ArrivalSchedule").append(
                                          str);
                                 }

                              });

                     });

         //달력
         $(function() {
            from = $("#from").datepicker({
               /* defaultDate : "+1w",  */
               minDate : 0,
               numberOfMonths : 2,
               altField : "#alternate",
               altFormat : "yy-mm-dd DD"
            }).on(
                  "change",
                  function() {
                     to.datepicker("option", "minDate", getDate(this));

                     var date = new Date($("#from").datepicker({

                     }).val()), week = new Array('일', '월', '화', '수',
                           '목', '금', '토');
                     if (week[date.getDay()] != undefined) {
                     }
                  }), to = $("#to").datepicker({
               /* defaultDate : "+1w", */
               minDate : 0,
               numberOfMonths : 2,
               altField : "#alternate2",
               altFormat : "yy-mm-dd DD"
            })
                  .on(
                        "change",
                        function() {
                           from.datepicker("option", "maxDate",
                                 getDate(this));

                           var date = new Date($("#to").datepicker({

                           }).val()), week = new Array('일', '월', '화',
                                 '수', '목', '금', '토');
                           if (week[date.getDay()] != undefined) {

                           }
                        });
            function getDate(element) {
               var date;
               try {
                  date = $.datepicker
                        .parseDate(dateFormat, element.value);
               } catch (error) {
                  date = null;
               }
               return date;
            }
         });

         /* 오늘날짜 */
         $(document).ready(
               function() {
                  $("#from").datepicker({});
                  var myDate = new Date();
                  var month = myDate.getMonth() + 1;
                  var day = myDate.getDate();
                  if (month < 10) {
                     month = "0" + month;
                  }
                  if (day < 10) {
                     day = "0" + day;
                  }
                  var prettyDate = myDate.getFullYear() + '-' + month
                        + '-' +day;
                  $("#from").val(prettyDate);

               });
         $(document).ready(
               function() {
                  $("#to").datepicker({});
                  var myDate = new Date();
                  var month = myDate.getMonth() + 1;
                  var day = myDate.getDate();
                  if (month < 10) {
                     month = "0" + month;
                  }
                  if (day < 10) {
                     day = "0" + day;
                  }
                  var prettyDate = myDate.getFullYear() + '-' + month
                        + '-' + day;
                  $("#to").val(prettyDate);
                  $("#to2").val(prettyDate);
               });
         /* 달력 한글화 */
         jQuery(function($) {
            $.datepicker.regional['ko'] = {

               monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
                     '8월', '9월', '10월', '11월', '12월' ],
               monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
                     '7월', '8월', '9월', '10월', '11월', '12월' ],
               dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
               dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
               dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
               weekHeader : 'Wk',
               dateFormat : 'yy-mm-dd',
               firstDay : 0,
               isRTL : false,
               showMonthAfterYear : true,
               yearSuffix : '년'
            };
            $.datepicker.setDefaults($.datepicker.regional['ko']);
         });

         /* 장소 선택출력 */
         $("#departures").change(function() {

            var str = "";

            $("#departures option:selected").each(function() {

               str += $(this).text();

            });

            $("#departuresprint").text(str);
            $("#departuresprint2").text(str);
            $("#departuresprint3").text(str);
            $("#departuresprint4").text(str);
         }).trigger('change');
         $("#destination").change(function() {

            var str = "";

            $("#destination option:selected").each(function() {

               str += $(this).text();

            });

            $('#destinationprint').text(str);
            $('#destinationprint2').text(str);
            $('#destinationprint3').text(str);
            $('#destinationprint4').text(str);

         }).trigger('change');

         /* 이중셀렉트박스 */
         function change(departures) {
            var f = document.form;
            if (departures == "1") {
               num = new Array("");
               vnum = new Array("");
            } else if (departures == "2") {
               num = new Array("------한국------","서울(김포)", "제주", "------일본------","도쿄(나리타)", "오사카(간사이)",
                     "후쿠오카","------중국------", "칭다오", "장자제","------대만------","타이베이", "가오슝");
               vnum = new Array("1", "2", "3", "4", "5", "6", "7", "8",
                     "9","10","11","12","13");
            } else if (departures == "3") {
               num = new Array("------한국------","부산", "제주", "------일본------","도쿄(나리타)", "오사카(간사이)",
                     "후쿠오카","------중국------", "칭다오", "장자제","------대만------","타이베이", "가오슝");
               vnum = new Array("1", "2", "3", "4", "5", "6", "7", "8",
                     "9","10","11","12","13");
            } else if (departures == "4") {
               num = new Array("------한국------","부산", "서울(김포)", "------일본------","도쿄(나리타)", "오사카(간사이)",
                     "후쿠오카","------중국------", "칭다오", "장자제","------대만------","타이베이", "가오슝");
               vnum = new Array("1", "2", "3", "4", "5", "6", "7", "8",
                     "9","10","11","12","13");
            } else if (departures == "5") {
               num = new Array("");
               vnum = new Array("");
            } else if (departures == "6") {
               num = new Array("");
               vnum = new Array("");
            }

            else if (departures == "7") {
               num = new Array("부산", "서울(김포)", "제주");
               vnum = new Array("1", "2", "3");
            } else if (departures == "8") {
               num = new Array("부산", "서울(김포)", "제주");
               vnum = new Array("1", "2", "3");
            } else if (departures == "9") {
               num = new Array("부산", "서울(김포)", "제주");
               vnum = new Array("1", "2", "3");
            } else if (departures == "10") {
               num = new Array("");
               vnum = new Array("");
            } else if (departures == "11") {
               num = new Array("");
               vnum = new Array("");
            } else if (departures == "12") {
               num = new Array("부산", "서울(김포)", "제주");
               vnum = new Array("1", "2", "3");
            } else if (departures == "13") {
               num = new Array("부산", "서울(김포)", "제주");
               vnum = new Array("1", "2", "3");
            } else if (departures == "14") {
               num = new Array("");
               vnum = new Array("");
            } else if (departures == "15") {
               num = new Array("");
               vnum = new Array("");
            } else if (departures == "16") {
               num = new Array("부산", "서울(김포)", "제주");
               vnum = new Array("1", "2", "3");
            } else if (departures == "17") {
               num = new Array("부산", "서울(김포)", "제주");
               vnum = new Array("1", "2", "3");
            }

            for (i = 0; i < f.destination.length; i++) {
               f.destination.options[0] = null;
            }
            for (i = 0; i < num.length; i++) {
               f.destination.options[i] = new Option(num[i], vnum[i]);
            }
         }

         /* 왕복편도 */
         function trip(t) {
            if (t == "2") {
               comingday.style.display = 'none';
            } else {
               comingday.style.display = '';
            }
         }

         /* 버튼클릭시 */
         function buttonclick() {

            section.style.display = '';
         }

         var test = "";
         /* 성인 수 */
         $(":input").on('keyup mouseup', function() {
            var num = $("#adult").val();
            test = num;
            $("#adult_num").text(num + "명");
         }).trigger('mouseup');
         $(":input").on('keyup mouseup', function() {
            var num = $("#adult").val();
            $("#adult_num2").text(num + "명");
         }).trigger('mouseup');

         /* 요금 합계 */
         var total = "";

         /* 시간, 요금 */

         function Departure(d) {
            var isChecked = $(d).is(":checked");
            var txt;

            var d_time = $(d).parent().parent().find('label.d_time').text();
            var d_price = $(d).parent().parent().find('label.d_price')
                  .text();
            var d_num = $(d).parent().parent().find('label.d_num').text();
            var d_airname = $(d).parent().parent().find('label.d_airname')
                  .text();
            $('#d_time').text(d_time);
            $('#d_price').text(d_price + " (원)");
            $('#d_num').val(d_num);
            $('#d_airname').val(d_airname);
            d_price = parseInt(d_price + " (원)");
            total = d_price;

         }

         function Arrival(a) {
            var isChecked = $(a).is(":checked");
            var txt;

            var a_time = $(a).parent().parent().find('label.a_time').text();
            var a_price = $(a).parent().parent().find('label.a_price')
                  .text();
            var a_num = $(a).parent().parent().find('label.a_num').text();
            var a_airname = $(a).parent().parent().find('label.a_airname')
                  .text();
            $('#a_time').text(a_time);
            $('#a_price').text(a_price + " (원)");
            $('#a_num').val(a_num);
            $('#a_airname').val(a_airname);
            a_price = parseInt(a_price);
            total = (total + a_price) * test;
            $('#total').text(total + " (원)");

         }

         /* 가는 여정 */
         function d_click() {

            d.style.display = '';
         }
         /* 오는 여정 */
         function a_click() {

            a.style.display = '';
         }
         
         
      </script>
</body>
</html>