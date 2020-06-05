<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script src="./js/jquery-1.11.1.min.js"></script>
<script>
function ajaxFun(){
	console.log("실행ajaxFun");
	return new Promise(function (resolve, reject){
		$.ajax({
	        type : "GET",
	        url : "./ajax/ajax_data.json",
	        dataType : "json",
	        data : "",
	        success : resolve,
	        error : reject
		});
	});
}


function firstFun(){
	console.log("실행1");
	ajaxFun()
	.then(function(data){
		var key = data.result;
		debugger;
		console.log(key[0].value);
	})
	.catch(function(error){
		console.log('error');
	});
}

function secondFun(){
	console.log("실행2");
	ajaxFun()
	.then(function(data){
		var key = data.result;
		debugger;
		console.log(key[0].value);
	})
	.catch(function(error){
		console.log('error');
	});
}

function main(){
	firstFun();
	secondFun();
}

main();

</script>
</body>
</html>