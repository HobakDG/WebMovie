function CheckAddMovie(){

	var movieId = document.getElementById("movieId");
	var mname = document.getElementById("name");
	
	if(!check(/^M[0-9]{4,11}$/, movieId,
	"[상풍 코드]\nM와 숫자를 조합하여 5~12자까지 입력하세요\n첫 글자는 반드시 M로 시작하세요"))
	return false;
		
	if(mname.value.length<4||mname.value.length>12){
		alert("[상품명]\n최소 4자에서 최대 12자까지 입력하세요");
		mname.select();
		mname.focus();
		return false;
	}
	
	function check(regExp,e,msg){
		if(regExp.test(e.value)){
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
			
		document.newMovie.submit();
	}