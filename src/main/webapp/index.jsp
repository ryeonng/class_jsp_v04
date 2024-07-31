<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<link rel="icon" href="favicon.ico" type="image/x-icon">
</head>
<body>
	<div class="container">
		<h2>폼 예제</h2>
		<form action="result.jsp" method="post">
			<label for="username">Username: </label> <input type="text"
				id="username" name="username" value="야스오"> <br>
			<br> <label>취미를 선택하세요.</label><br> <input type="checkbox"
				id="hobby1" name="hobbies" value="축구"> <label for="hobby1">축구</label><br>

			<input type="checkbox" id="hobby2" name="hobbies" value="농구">
			<label for="hobby2">농구</label><br> <input type="checkbox"
				id="hobby3" name="hobbies" value="독서"> <label for="hobby3">독서</label><br>

			<input type="checkbox" id="hobby4" name="hobbies" value="코딩">
			<label for="hobby4">코딩</label><br>

			<hr>
			<label>좋아하는 색을 선택하세요.</label><br>
			<input type="radio" id="color1" name="favoriteColor" value="빨강">
			<label for="color1">빨강</label>
			
			<input type="radio" id="color2" name="favoriteColor" value="파랑">
			<label for="color2">파랑</label>
			
			<input type="radio" id="color3" name="favoriteColor" value="초록">
			<label for="color3">초록</label><br>

			<button type="submit">제출</button>

		</form>
	</div>
</body>
</html>