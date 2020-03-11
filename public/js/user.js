var f = document.signupForm;
var $userid = $(f.userid);
var $userpw = $(f.userpw);
var $userpw2 = $(f.userpw2);
var $username = $(f.username);
var $email = $(f.email);
var useridValid = false;

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
				$userid.next().remove();
				$userid.css({"border-color": "blue"});
				useridValide = true;
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
}

function useridFail(msg) {
	$userid.css({"border-color": "red"});
	$userid.next().remove();
	$userid.parent().append('<div class="pt-2 text-danger">* '+msg+'</div>');
	$userid.focus();
	useridValide = false;
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