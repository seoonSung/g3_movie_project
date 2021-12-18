<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>


<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel='stylesheet'
   href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
<script
   src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
<link rel="stylesheet"
   href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
<!-- MATERIAL DESIGN ICONIC FONT -->
<link rel="stylesheet" href="${contextPath}/resources/css/seat.css">
</head>

<body>
<c:import url="../default/header.jsp"/>
<div class="wrap">
   
   
   <div class="select-container">
      <div class="select-wrapper">
         <div class="select-title">¸ì›/ì¢Œì„</div>
         <div class="select-seat-container">
            <div class="select-seat-number-container">
               <div class="select-seat-number-wrapper">
                  <div class="select-seat">
                     <div class="select-seat-age">¼ë°˜</div>
                     <div class="select-seat-number">
                        <ul class="select-seat-ul select-seat-ul-normal">
                           <li class="select-number-normal ">0</li>
                           <li class="select-number-normal">1</li>
                           <li class="select-number-normal">2</li>
                           <li class="select-number-normal">3</li>
                           <li class="select-number-normal">4</li>
                           <li class="select-number-normal">5</li>
                           <!--  <li class="select-number-normal">6</li>
                                    <li class="select-number-normal">7</li>
                                    <li class="select-number-normal">8</li> -->
                        </ul>
                     </div>
                  </div>
                  <div class="select-seat">
                     <div class="select-seat-age">ì²†Œ/div>
                     <div class="select-seat-number">
                        <ul class="select-seat-ul select-seat-ul-teen">
                           <li class="select-number-teen">0</li>
                           <li class="select-number-teen">1</li>
                           <li class="select-number-teen">2</li>
                           <li class="select-number-teen">3</li>
                           <li class="select-number-teen">4</li>
                           <li class="select-number-teen">5</li>
    
                        </ul>
                     </div>
                  </div>

               </div>
               <div class="reserve-number-wrapper">
                  <div class="reserve-number-title"> íƒì¢Œì„ /div>
                  <div class="reserve-number">0</div>
               </div>
            </div>
            <div class="select-seat-information">
               <div class="selected-movie">${title }</div>
               <div class="select-seat-information-wrapper">
               	  
                  
                  <div class="select-theater-place selected-theater-place-info">${theater }ê´€</div>
                  <div class="select-theater-place">
                     <span>¨ìì¢Œì„</span><span class="remain-seats">152</span>/<span
                        class="all-seats">172</span>
                  </div>

               </div>
               <div class="select-theater-date">
                  <div class="theater-date"></div>
                  <div class="theater-time"></div>
               </div>
               <div class="selected-seats-wrapper">
                  <span class="selected-seats-title">ì¢Œì„ë²ˆí˜¸</span> <span
                     class="selected-seats"> íƒì¢Œì„†ìŠµˆë‹¤.</span>
               </div>
               <div class="ticket-price-wrapper">
                  <div class="ticket-price-title">ê°€ê²/div>
                  <div class="ticket-price">0/div>
               </div>
               <form action="moveKakao.do" class="seatForm" method="post">
                  <input type="hidden" class="title" name="title"> <input
                     type="hidden" class="selectedTheater" name="selectedTheater">
                  <input type="hidden" class="reserveDate" name="movieDate">
                  <input type="hidden" class="runningTime" name="runningTime">
                  <input type="hidden" class="movieAge" name="movieAge"
                     value="">
                  <!-- °ì¼“˜ìˆ˜( íƒì¢Œì„) -->
                  <input type="hidden" class="ticketNumber" name="ticketNumber">
                  <input type="hidden" class="selectedSeat" name="selectedSeat">
                  <!-- ê²°ì œ •ë³´ -->
                  <input type="hidden" class="payMoney" name="payMoney">
                  <button type="button" class="reserve-button">
                     ê²°ì œ˜ê¸°<img src="./images/payment_icon_yellow_medium.png">
                  </button>
               </form>
            </div>

         </div>
         <div class="seat-container">

            <div class="seat-wrapper">
               <div class="screen-view-wrapper">
                  <div class="screen-view">SCREEN</div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <c:import url="../default/footer.jsp"/>
</body>
<script >
let test = [];
let selectedSeatsArray = new Array();
const seatWrapper = document.querySelector('.seat-wrapper');
let clicked = '';
let div = '';
let seat = document.querySelectorAll('.seat');
const selectedSeats = document.querySelector('.selected-seats');
const allSeat = document.querySelector('.all-seats');
const remainSeat = document.querySelector('.remain-seats');
const reserveNumber = document.querySelector('.reserve-number');
const selectSeatListNormal = document.querySelectorAll(
    '.select-seat-ul-normal li'
);
const selectSeatListTeen = document.querySelectorAll('.select-seat-ul-teen li');
const selectSeatListOld = document.querySelectorAll('.select-seat-ul-old li');
let selectSeatListUlActive = '';
let normalNumber = 0;
let teenNumber = 0;
let oldNumber = 0;
let allNumber = 0;
let prevNumber = 0;
let normalMoney = 0;
let teenMoney = 0;
let oldMoney = 0;
let allMoney = 0;

const selectNumberNormal = document.querySelectorAll('.select-number-normal');
const selectNumberTeen = document.querySelectorAll('.select-number-teen');
const selectNumberOld = document.querySelectorAll('.select-number-old');

//ˆì•½ ê´€
const selectedMovie = document.querySelector('.selected-movie');
const selectedTheaterPlaceInfo = document.querySelectorAll(
    '.selected-theater-place-info'
);
const theaterTime = document.querySelector('.theater-time');
const theaterDate = document.querySelector('.theater-date');
const ticketPrice = document.querySelector('.ticket-price');
const payMoney = document.querySelector('.payMoney');

const seatForm = document.querySelector('.seatForm');
const reserveButton = document.querySelector('.reserve-button');
const title = document.querySelector('.title');
const selectedTheater = document.querySelector('.selectedTheater');
const reserveDate = document.querySelector('.reserveDate');
const runningTime = document.querySelector('.runningTime');
const ticketNumber = document.querySelector('.ticketNumber');
const selectedSeat = document.querySelector('.selectedSeat');

toastr.options = {
    positionClass: 'toast-top-right',
    progressBar: true,
    timeOut: 1000,
    preventDuplicates: true,
};

//ë²„íŠ¼´ë¦­¤ë¥¸ class ì¶”ê ì´ˆê¸°”í•´ì£¼ê¸°
function selectSeatList(list) {
    allNumber = 0;
    allMoney = 0;
    list.forEach(li => {
        //´ë¦­œì— ¤ë¥¸ classì´ˆê¸°”í•´ì£¼ê¸°
        initList(list, li);
    });
}

function initList(list, li) {
    li.addEventListener('click', function() {
        list.forEach(li => {
            li.classList.remove('select-seat-ul-active');
        });
        li.classList.add('select-seat-ul-active');
        selectSeatListUlActive = document.querySelectorAll(
            '.select-seat-ul-active'
        );
        console.log(selectSeatListUlActive);
        selectListUiFunction(selectSeatListUlActive);
        console.log('ë¨¸ë‹ˆë¨¸ë‹ˆ' + allMoney);

        console.log(normalNumber);
        console.log(teenNumber);
        console.log(oldNumber);
        console.log(allNumber);
    });
}

function selectListUiFunction(selectSeatListUlActive) {
    selectSeatListUlActive.forEach(li => {
        if (li.parentNode.classList.contains('select-seat-ul-normal')) {
            normalNumber = Number(li.innerHTML);
            normalMoney = 11000 * normalNumber;
            allMoney = normalMoney + teenMoney + oldMoney;
            allNumber = normalNumber + teenNumber + oldNumber;
            ticketPrice.innerHTML = allMoney + ';
            if (allNumber > 16) {
                li.classList.remove('select-seat-ul-active');
                allMoney -= normalMoney;
                allNumber = allNumber - normalNumber;

                selectNumberNormal[0].classList.add('select-seat-ul-active');
                ticketPrice.innerHTML = allMoney + ';
            }
        } else if (li.parentNode.classList.contains('select-seat-ul-teen')) {
            teenNumber = Number(li.innerHTML);
            teenMoney = 8000 * teenNumber;
            allMoney = normalMoney + teenMoney + oldMoney;
            allNumber = normalNumber + teenNumber + oldNumber;
            ticketPrice.innerHTML = allMoney + ';
            if (allNumber > 16) {
                li.classList.remove('select-seat-ul-active');
                //normalNumber = teenNumber = oldNumber = 0;
                allMoney -= teenMoney;
                allNumber = allNumber - teenNumber;

                selectNumberTeen[0].classList.add('select-seat-ul-active');
                ticketPrice.innerHTML = allMoney + ';
            }
        } else if (li.parentNode.classList.contains('select-seat-ul-old')) {
            oldNumber = Number(li.innerHTML);
            oldMoney = 8000 * oldNumber;
            allMoney = normalMoney + teenMoney + oldMoney;
            allNumber = normalNumber + teenNumber + oldNumber;
            ticketPrice.innerHTML = allMoney + ';
            if (allNumber > 16) {
                li.classList.remove('select-seat-ul-active');

                allMoney -= oldMoney;
                allNumber = allNumber - oldNumber;

                selectNumberOld[0].classList.add('select-seat-ul-active');
                ticketPrice.innerHTML = allMoney + ';
            }
        }

        // allNumber = normalNumber + teenNumber + oldNumber;
        // allMoney = normalMoney + teenMoney + oldMoney;
        console.log(allNumber + 'ë­¥ë');
        ticketPrice.innerHTML = allMoney + ';

        if (allNumber > 16) {
            console.log(li);
            li.classList.remove('select-seat-ul-active');
            // normalNumber = teenNumber = oldNumber = 0;
            toastr.error(
                '<div style="color:white">ì§€•í•œ ¸ì›˜ë ˜ì—ˆµë‹ˆìµœë 8ëª</div>',
                '<div style="color:white">¸ì›•ì¸</div>', {
                    timeOut: 4000,
                }
            );
        }
        payMoney.value = allMoney;
        console.log(allMoney);
    });
}

selectSeatList(selectSeatListNormal);
selectSeatList(selectSeatListTeen);
selectSeatList(selectSeatListOld);

for (let i = 0; i < 10; i++) {
    div = document.createElement('div');
    div.classList = 'seatButtonWrapper';
    seatWrapper.append(div);

    for (let j = 0; j < 12; j++) {
        const input = document.createElement('input');
        input.type = 'button';
        input.name = 'seats';
        input.classList = 'seat';
        //3ì¤‘í¬ë¬¸ì„ ¬ìš©˜ì Šê¸°„í•´
        mapping(input, i, j);
        div.append(input);
        //´ë¦­´ë²¤
        inputClickEvent(input);
    }

    seat = document.querySelectorAll('.seat');
    remainSeat.innerHTML = seat.length;
    allSeat.innerHTML = seat.length;
}

seat.forEach(data => {
    //console.log(data.value.substring(1, data.value.length));
    // console.log(data.value.substring(0, data.value.length - 1));
    //ì¢Œì„29ë¡ë‚˜”ì–˜¤ì ¼ìª½´ë‚˜ ¤ë¥¸ìª½ìœ¼ë¡„ì›Œì£¼ê¸°„í•œ classì¶”ê
    if (data.value.substring(1, data.value.length) === '2') {
        data.classList.add('left-margin');
    } else if (data.value.substring(1, data.value.length) === '9') {
        data.classList.add('right-margin');
    }
    //ìë¦¬ê Eë¡œë˜ëŠ” ì¢Œì„¤ì— class ì¶”ê
    if (
        data.value.substring(0, data.value.length - 1) === 'E' ||
        data.value.substring(0, data.value.length - 2) === 'E'
    ) {
        data.classList.add('top-margin');
    }
});

//TODO ì¢Œì„ 2ê°œì”©€ ì»¤í”Œìœ¼ë¡ë¶„ë¦¬˜ê¸°„í•´´ë‹¹ classë¥ì¶”ê´ì¤˜¼í•˜”ë° valueê°€ 2ë¡œë˜ëŠ”˜ë“¤´ë‘ 7ë¡œë˜ëŠ” ˜ë“¤€ classë¥ì¶”ê´ì£¼ê¸

function inputClickEvent(input) {
    input.addEventListener('click', function(e) {
        console.log(e.target.value);
        //ì¤‘ë³µë°©ì ¨ìˆ˜
        selectedSeatsArray = selectedSeatsArray.filter(
            (element, index) => selectedSeatsArray.indexOf(element) != index
        );

        //click classê°€ ì¡´ì¬ ë•Œ(œê±°´ì£¼toggle)
        if (input.classList.contains('clicked')) {
            input.classList.remove('clicked');
            clicked = document.querySelectorAll('.clicked');

            //ë°°ì—´ˆì˜ ê°œê±°
            selectedSeatsArray.splice(selectedSeatsArray.indexOf(e.target.value), 1);
            clicked.forEach(data => {
                selectedSeatsArray.push(data.value);
            });
            //classê°€ ì¡´ì¬ˆí• ì¶”ê´ì£¼toggle
        } else {
            input.classList.add('clicked');
            clicked = document.querySelectorAll('.clicked');
            // íƒë²ˆí˜¸ê°ˆ˜ë¥˜ê¸°ë©™ì‘ ëª»í•˜ê²˜ëŠ” ì½”ë“œ
            console.log(allNumber);
            if (clicked.length > allNumber) {
                input.classList.remove('clicked');
                toastr.error(
                    '<div style="color:white">ì§€•í•œ ¸ì›˜ë ˜ì—ˆµë‹ˆ/div>',
                    '<div style="color:white">¸ì›•ì¸</div>', {
                        timeOut: 4000
                    }
                );
                return;
            }

            clicked.forEach(data => {
                selectedSeatsArray.push(data.value);
            });
        }

        console.log(selectedSeatsArray.length);
        console.log(selectedSeatsArray);
        //ì¢Œì„ë²ˆí˜¸innerHTML ¤ì •
        selectedSeats.innerHTML = selectedSeatsArray;
        reserveNumber.innerHTML = selectedSeatsArray.length;
        remainSeat.innerHTML = seat.length - selectedSeatsArray.length;
        // if (selectedSeatsArray.length > 4) {
        //     return;
        // }
    });
}

function mapping(input, i, j) {
    if (i === 0) {
        input.value = 'A' + j;
    } else if (i === 1) {
        input.value = 'B' + j;
    } else if (i === 2) {
        input.value = 'C' + j;
    } else if (i === 3) {
        input.value = 'D' + j;
    } else if (i === 4) {
        input.value = 'E' + j;
    } else if (i === 5) {
        input.value = 'F' + j;
    } else if (i === 6) {
        input.value = 'G' + j;
    } else if (i === 7) {
        input.value = 'H' + j;
    } else if (i === 8) {
        input.value = 'I' + j;
    } else if (i === 9) {
        input.value = 'J' + j;
    } else if (i === 10) {
        input.value = 'K' + j;
    }
}

//form œì¶œhidden¤ì •˜ê¸°
reserveButton.addEventListener('click', function() {
    title.value = selectedMovie.innerHTML;
    selectedTheater.value =
        selectedTheaterPlaceInfo[0].innerHTML +
        ' ' +
        selectedTheaterPlaceInfo[1].innerHTML;
    reserveDate.value = theaterDate.innerHTML;
    runningTime.value = theaterTime.innerHTML;
    ticketNumber.value = reserveNumber.innerHTML;
    selectedSeat.value = selectedSeats.innerHTML;
    console.log(allNumber + ');
    console.log(ticketNumber.value);
    console.log(allNumber === ticketNumber.value);
    console.log(allNumber === Number(ticketNumber.value));
    if (
        Number(ticketNumber.value) === allNumber &&
        ticketNumber.value !== '0' &&
        ticketNumber.value !== 0
    ) {
        seatForm.submit();
    } else {
        alert('ì¢Œì„ëª¨ë‘ íƒì£¼ì„¸');
    }
}); 
</script>

</html> 