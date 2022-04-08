window.onload = function(){
	
	//주소API
    document.getElementById("first_addrbtn").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //발신자 주소검색 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
               document.getElementById("first_addr").value = data.zonecode;
                document.getElementById("first_addr2").value = data.address; // 주소 넣기
            }
        }).open();
    });
    
   
    
    
    
    
 var idCheck = false;
$('#idCheck').click(function(){
	var userid = $.trim($('#userid').val());
	if(userid=="") {
		$('#useridid .error_box1').html('필수 입력 사항입니다.');  //자식을 찾을 때에는 한 칸 띄우고 입력하기
    		//$('#userid').val('필수 입력 사항입니다.');
		return false;
	} else {
		$('#useridid .error_box2').html('');
		$('#useridid .error_box1').html('');
	}
	
	$.ajax({
	       type : 'post',
	       url : 'idCheck.do',
	       data : { account_Id : $('#userid').val() },
	       contentType : 'application/x-www-form-urlencoded;charset=utf-8',  //한글로 넘어감
	       success : function(result){
	          
	          // 중복 검사 후 나오는 결과 에러박스에 출력
	          if(result == 'yes'){
	                 $('#useridid .error_box2').css('color','#28a745');
	                 $('#useridid .error_box2').html('사용 가능한 아이디입니다.');
	                 idCheck = true;
	            }else{
	            	$('#useridid .error_box1').html('사용할 수 없는 아이디입니다.');
	                 //emailCheak = true;
	                 idCheck = false;
	            }
	       },
	       error : function(err){
	         alert('실패');
	          console.log(err);
	       }
	    }); //end of ajax
})






    $('#signupbtn').click(function() {
	
		
	
	
	
	    if (!checkUsername(form.username.value)) {
            return false;
        }
        if (!checkUserId(form.userid.value)) {
            return false;
        }
        if (!checkPassword(form.userid.value, form.userpassword1.value, form.userpassword2.value)) {
            return false;
        }
        if (!checkMail(form.useremail.value)) {
            return false;
        }
        
        if (!checkTel(form.usertel.value)) {
            return false;
        }
        
        if (!checkAddr1(form.first_addr.value)) {
            return false;
        }
       
        if (!checkAddr3(form.first_addr3.value)) {
          
            return false;
        }
        
       
        //이용약관
        if(!($('#agree2').is(':checked') && $('#agree3').is(':checked'))) {
        	//체크가 안 됐을 때
        	alert('필수사항을 모두 체크해주세요.');
        	return false;
        	
        }else{
        	$.ajax({
	       type : 'post',
	       url : 'idCheck.do',
	       data : { account_Id : $('#userid').val() },
	       contentType : 'application/x-www-form-urlencoded;charset=utf-8',  //한글로 넘어감
	       success : function(result){
	          
	          // 중복 검사 후 나오는 결과 에러박스에 출력
	          if(result == 'yes'){
	                document.form.submit();  
 					alert('회원가입을 축하드립니다.');
	                 idCheck = true;
	            }else{
	            	alert('아이디 중복체크를 해주세요.');
	            	//idCheck=false;
	                return;
	            }
	       },
	       error : function(err){
	         alert('실패');
	          console.log(err);
	       }
	    }); //end of ajax
        } 
       
        if(!idCheck) {
        	alert('아이디 중복체크를 해주세요.');
        	return false;
        }
        
        

 
 
		
        return true;
})
    

    
   
 
     
    // 공백확인 함수
    function checkExistData(value, dataName) {
        if (value == "") {
            alert(dataName + " 입력해주세요!");
            return false;
        }
        return true;
    }
 
    function checkUserId(id) {
        //Id가 입력되었는지 확인하기
        if (!checkExistData(id, "아이디를"))
            return false;
 
        var idRegExp = /^[a-zA-z0-9]{4,12}$/; //아이디 유효성 검사
        if (!idRegExp.test(id)) {
            alert("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
            form.userid.value = "";
            form.userid.focus();
            return false;
        }
        return true; //확인이 완료되었을 때
    }
 
    function checkPassword(id, userpassword1, userpassword2) {
        //비밀번호가 입력되었는지 확인하기
        if (!checkExistData(userpassword1, "비밀번호를"))
            return false;
        //비밀번호 확인이 입력되었는지 확인하기
        if (!checkExistData(userpassword2, "비밀번호 확인을"))
            return false;
 

       var password1RegExp = /^(?=.*[a-zA-Z])(?=.*[0-9]).{4,12}$/;
        if (!password1RegExp.test(userpassword1)) {
            alert("비밀번호는 영문자와 숫자 4~12자리로 입력해야합니다!");
            form.userpassword1.value = "";
            form.userpassword1.focus();
            return false;
        }
        //비밀번호와 비밀번호 확인이 맞지 않다면..
        if (userpassword1 != userpassword2) {
            alert("비밀번호가 일치하지 않습니다.");
            form.userpassword1.value = "";
            form.userpassword2.value = "";
            form.userpassword2.focus();
            return false;
        }
 
        //아이디와 비밀번호가 같을 때..
        if (id == userpassword1) {
            alert("아이디와 비밀번호는 같을 수 없습니다!");
            form.userpassword1.value = "";
            form.userpassword2.value = "";
            form.userpassword2.focus();
            return false;
        }
        return true; //확인이 완료되었을 때
        
    }
 
    function checkMail(mail) {
        //mail이 입력되었는지 확인하기
        if (!checkExistData(mail, "이메일을"))
            return false;
 
        var emailRegExp = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;
        if (!emailRegExp.test(mail)) {
            alert("이메일 형식이 올바르지 않습니다!");
            form.useremail.value = "";
            form.useremail.focus();
            return false;
        }
        return true; //확인이 완료되었을 때
    }
 
    function checkUsername(name) {
        if (!checkExistData(name, "이름을"))
            return false;
 
        var nameRegExp = /^[가-힣]{2,4}$/;
        if (!nameRegExp.test(name)) {
            alert("이름이 올바르지 않습니다.");
            return false;
        }
        return true; //확인이 완료되었을 때
    }
    
    function checkTel(tel) {
		if(!checkExistData(tel, "전화번호를"))
		return false;
		
		var telRegexExp = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{3,4})$/;
		if(!telRegexExp.test(tel)) {
            alert("전화번호가 올바르지 않습니다.");
            return false;
        }
        return true; //확인이 완료되었을 때
	}
	
	function checkAddr1(addr1) {
		if(!checkExistData(addr1, "주소를")) 
		return false;
		
		
		return true; //확인이 완료되었을 때
		}
		
	
	function checkAddr3(addr3) {
		if(!checkExistData(addr3, "상세주소를")) 
		return false;
		return true; //확인이 완료되었을 때
		}
		
	

    
   
 		//이용약관 전체 선택
     	$("#allcheck").click(function() {
				if($("#allcheck").is(":checked")) {
				$("input[name='chk']").prop("checked", true);
				}else {
				$("input[name='chk']").prop("checked", false);
				}
			});
			
			$("input[name=chk]").click(function() {
				var total = $("input[name='chk']").length;
				var checked = $("input[name='chk']:checked").length;
				
				if(total != checked) $("#allcheck").prop("checked", false);
				else $("#allcheck").prop("checked", true); 
			});
			
			
			
     
}
    