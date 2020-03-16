var f = document.signupForm;
var $userid = $(f.userid);
var $userpw = $(f.userpw);
var $userpw2 = $(f.userpw2);
var $username = $(f.username);
var $email = $(f.email);
var useridValid = false;
var emailRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

$userid.blur(function(){
	if($userid.val().trim() == "" || $userid.val().trim().length < 4) {
		useridFail("아이디는 최소 4자 이상입니다.");
	}
	else {
		$.post("/user/idchk", {userid: $(this).val()}, cb);
		function cb(res) {
			if(res.length > 0) {
				useridFail("중복된 아이디가 있습니다. 다른 아이디를 선택해 주세요.");
			}
			else {
				useridSuccess("사용할 수 있는 아이디 입니다. Cool~");
			}
		}
	}
});


function signupSubmit() {
	if($userid.val().trim() === "" || $userid.val().trim().length < 4) {
		useridFail("아이디는 최소 4자 이상입니다.");
		return false;
	}
	if(!useridValid) {
		alert("아이디를 중복체크 하세요.");
		$userid.focus();
		return false;
	}
	if($userpw.val().trim().length < 4) {
		alert("패스워드는 4글자 이상입니다.");
		$userpw.focus();
		return false;
	}
	if($userpw.val().trim() != $userpw2.val().trim()) {
		alert("패스워드가 일치하지 않습니다.");
		$userpw.focus();
		return false;
	}
	if($username.val().trim() == "") {
		alert("이름(닉네임)을 작성해 주세요.");
		$username.focus();
		return false;
	}
	if($email.val().trim() == "") {
		alert("이메일을 입력해 주세요.");
		$email.focus();
		return false;
	}
	if(!$email.val().trim().match(emailRegExp)) {
		alert("이메일을 정확히 입력해 주세요.");
		$email.focus();
		return false;
	}
	return true;
}

function useridFail(msg) {
	useridValid = false;
	$userid.css({"border-color": "red"});
	$userid.next().remove();
	$userid.parent().append('<div class="pt-2 text-danger">* '+msg+'</div>');
	$userid.focus();
}

function useridSuccess(msg) {
	useridValid = true;
	$userid.css({"border-color": "blue"});
	$userid.next().remove();
	$userid.parent().append('<div class="pt-2 text-primary">* '+msg+'</div>');
}


/*
$.ajax({
	type: "post",
	url: "/user/idchk",
	data: {
		userid: userid
	},
	success: function(res) {

	},
	err: function(err) {
		
	}
})
*/