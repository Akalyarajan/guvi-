<?php
class dbconn
{
	function linkDB(){
		$link=mysqli_connect("localhost","root","","database");
		if(!$link){
			echo error_log();
		}
		else{
			return $link;
		}
	}
	public function loginCheck(){
		$link=$this->linkDB();
		$sql="select *, count(id) from guvi where email_id='".$_POST['username']."'";
	
		$result=mysqli_query($link,$sql);
		if(!$result){
			echo"ERROR TO CONNECT TABLE";
		}
		while($row=mysqli_fetch_assoc($result)){
			if($row['count(id)']==0){
				return ["status"=>"UNA"];
			}else{
				if($row['password']==md5($_POST['password'])){
					return ["status"=>"login"];

				}else{
					return ["status"=>"PW"];
				}
			}
		}
	}
	public function addNewUser(){
		$link=$this->linkDB();
		$sql="INSERT INTO `user`(`Firstname`,'Lastname',`email_id`, `password`,s) VALUES ('".$_POST['name']."','".$_POST['email_id']."','".md5($_POST['password'])."','".$_POST['cno']."')";
		$result=mysqli_query($link,$sql);
		if(!$result){
			echo "Error to connect table";
		}
		else{
			return ["status"=>"Done"];
		}
	}

}



?>