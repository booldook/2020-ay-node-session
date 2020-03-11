var f = document.signupForm;
var $userid = $(f.userid);
var $userpw = $(f.userpw);
var $userpw2 = $(f.userpw2);
var $username = $(f.username);
var $email = $(f.email);

$userid.blur(function(){
	$.post("/user/idchk", {userid: $(this).val()}, cb);
	function cb(res) {
		if(res.length > 0) {
			$userid.css({"border-color": "red"});
			$userid.next().remove();
			$userid.parent().append('<div class="pt-2 text-danger">* 중복된 아이디 입니다.</div>');
			$userid.focus();
		}
		else {
			$userid.next().remove();
			$userid.css({"border-color": "blue"});
		}
	}
});




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