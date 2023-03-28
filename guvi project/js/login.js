$(document).ready(function(){

	$("#save").click(function(){
		var username=$("#username").val();
		var password=$("#password").val();
		if(username==""){
			$("#username").css("border","1px solid red");
			$("#username").focus();
			return false;
		}
		else{
			$("#username").css("border","1px solid green");
		}
		if(password==""){
			$("#password").css("border","1px solid red");
			$("#password").focus();
			return false;
		}
		else{
			$("#password").css("border","1px solid green");
		}
		$.ajax({
			type:"POST",
			url:"php/log0in.php",
			dataType:"json",
			data:$("#loginForm").serialize(),
			success:function(res){
				if(res.status=="login"){
					window.location="profile.html";
				}
			}

		}
	}
}