$(document).ready(function(){
	$("#save").click(function(){
		if($("#First name").val()==""){
			$("#First name").css("border","1px solid red");
			$("#First name").focus();
			return false;
		}
		else{
			$("#First name").css("border","1px solid green");
		}
		if($("#Last name").val()==""){
			$("#Last name").css("border","1px solid red");
			$("#Last name").focus();
			return false;
		}
		else{
			$("#Last name").css("border","1px solid green");
		}
		if($("#Email id").val()==""){
			$("#Email id").css("border","1px solid red");
			$("#Email id").focus();
			return false;
		}
		else{
			$("#Email id").css("border","1px solid green");
		}
		if($("#Password").val()==""){
			$("#Password").css("border","1px solid red");
			$("#Password").focus();
			return false;
		}
		else{
			$("#Password").css("border","1px solid green");
		}
		$.ajax({
			type:"POST",
			url:"php/register.php",
			dataType:"json",
			data:$("#loginForm").serialize(),
			success:function(res){
				if(res.status=="Done"){
					window.location="login.html";
				}
			}

		}
	}
}