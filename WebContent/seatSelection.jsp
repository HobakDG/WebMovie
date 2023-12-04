<%@ page contentType="text/html; charset=utf-8" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>좌석 선택</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
     <style>
        .screen {
            width: 100%;
            text-align: center;
            background-color: #4CAF50;
            color: white;
            padding: 4px;
            margin-bottom: 20px;
            font-size: 1.2em;
        }
        .jumbotron {
            background-color: #000; /* Set the background color of the jumbotron to pitch black */
            color: #fff; /* Set the text color to white */
            padding: 20px;
        }
        .seat-grid {
            display: grid;
            grid-template-columns: repeat(10, 1fr); /* 좌석을 한 줄에 10개씩 표시 */
            gap: 5px;
            padding: 20px;
            background: #f0f0f0;
            border-radius: 8px;
            margin: auto;
            max-width: 600px; /* 좌석 그리드의 너비를 증가시킴 */
        }
        .seat-row-label {
            grid-column: 1 / -1; /* 라벨이 전체 열을 차지하도록 */
            background: #f0f0f0;
            text-align: left;
            padding-left: 10px;
            line-height: 30px; /* 라벨 높이 */
            border-bottom: 1px solid #ddd;
        }
        .seat {
            width: 50px; /* 좌석 너비 증가 */
            height: 50px; /* 좌석 높이 증가 */
            background-color: #ddd;
            border: 1px solid #666;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            user-select: none;
        }
        .seat.selected {
            background-color: #777;
        }
        .seat.unavailable {
            background-color: #aaa;
            cursor: not-allowed;
        }
        .section-divider {
            border-top: 0.5px solid #808080;
        }
        .navbar-dark {
            background-color: #000 !important; /* Set the background color of the navbar to pitch black */
        }
        #confirm-selection {
            display: block;
            width: auto;
            padding: 10px;
            margin: 20px auto;
            font-size: 1em;
            cursor: pointer;
        }
    </style>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); String theater = request.getParameter("theater");%>
	<% request.setCharacterEncoding("utf-8"); String date = request.getParameter("date");%>
	<% request.setCharacterEncoding("utf-8"); String time = request.getParameter("time");%>

	<jsp:include page="menu.jsp" />
    <div class="jumbotron" style="padding: 0px;">
        <div class="container" style="padding: 20px;">
            <h1 class="display-3" style="font-size: 48px; margin-left: -16px;">
                Seat Reservation
            </h1>
        </div>
    </div>
    
    <div style="display: flex; justify-content: center; align-items: center; height: 80vh;">
        <div style="margin-right: 150px;">
            <div class="screen" style="margin-bottom: 20px;">SCREEN</div>
            <div id="seat-grid" class="seat-grid">
                <!-- 자바스크립트로 좌석을 여기에 생성합니다 -->
            </div>
        </div>
        
        <div style="margin-left: 10px;">
            <div class="jumbotron" style="margin-bottom: 20px; padding: 8px;">Selected Seats</div>
            <div id="selected-seats" class="seat-grid">
                <!-- 선택된 좌석을 여기에 표시합니다 -->
            </div>
            <button id="confirm-selection" class="btn btn-primary btn-lg">선택 완료</button>
        </div>
    </div>
    
	<script>
	    const seatGrid = document.getElementById('seat-grid');
	    const rows = ['A', 'B', 'C', 'D', 'E', 'F']; // 좌석 행 라벨
	    const cols = 10; // 좌석 열 개수
	
	    // 좌석 초기화 함수
	    rows.forEach((row, rowIndex) => {
	        let rowLabel = document.createElement('div');
	        rowLabel.classList.add('seat-row-label');
	        rowLabel.textContent = row;
	        seatGrid.appendChild(rowLabel);
	
	        for (let col = 1; col <= cols; col++) {
	            const seat = document.createElement('div');
	            seat.classList.add('seat');
	            seat.textContent = col; // 좌석 번호 추가
	            seat.dataset.seatId = `${row}${col}`;
	            seat.onclick = () => toggleSeat(seat);
	            seatGrid.appendChild(seat);
	        }
	    });
	
	 	// 좌석 선택 토글 함수
	    function toggleSeat(seat) {
	        if (!seat.classList.contains('unavailable')) {
	            seat.classList.toggle('selected');
	            const seatId = seat.dataset.seatId;
	            const row = seatId.charAt(0);
	            const col = seatId.slice(1);
	            console.log(`Selected Seat: Row ${row}, Column ${col}`);
	        }
	    }
	
	    // 선택 완료 버튼 이벤트
	    document.getElementById('confirm-selection').addEventListener('click', () => {
		    const selectedSeats = document.querySelectorAll('.seat.selected');
		    if (selectedSeats.length > 0) {
		        const selectedSeatsIds = Array.from(selectedSeats).map(seat => seat.dataset.seatId);
		        const theater = '<%= theater %>';
		        const date = '<%= date %>';
		        const time = '<%= time %>';
		        
		        // Construct the URL with parameters
		        const url = `addCart.jsp?theater=${theater}&date=${date}&time=${time}&seats=${selectedSeatsIds.join(',')}`;
		        
		        // Redirect to addCart.jsp with the parameters
		        window.location.href = url;
		    } else {
		        // 좌석을 선택하지 않았을 경우
		        alert('좌석을 선택해주세요.');
		    }
		});
	    

	</script>
	
	<script type="text/javascript">
		function addToCart() {
			if(confirm("상품을 장바구니에 추가하시겠습니까?")){
				document.addForm.submit();
			}
		}
	</script>

</body>
</html>