<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <style>
        
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Noto Sans KR", sans-serif;
    }

    a {
        text-decoration: none;
        color: black;
    }

    li {
        list-style: none;
    }

    .wrap {
        width: 100%;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background: rgba(0, 0, 0, 0.1);
    }

    .login {
        width: 30%;
        height: 700px;
        background: white;
        border-radius: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    h2 {
        color: #95F62C;
        font-size: 2em;
    }

    .login_name {
        margin-top: 20px;
        width: 80%;
    }

    .login_name input {
        width: 100%;
        height: 50px;
        border-radius: 30px;
        margin-top: 10px;
        padding: 0px 20px;
        border: 1px solid lightgray;
        outline: none;
    }
   
    .login_id {
        margin-top: 20px;
        width: 80%;
    }

    .login_id input {
        width: 100%;
        height: 50px;
        border-radius: 30px;
        margin-top: 10px;
        padding: 0px 20px;
        border: 1px solid lightgray;
        outline: none;
    }

    .login_pw {
        margin-top: 20px;
        width: 80%;
    }

    .login_pw input {
        width: 100%;
        height: 50px;
        border-radius: 30px;
        margin-top: 10px;
        padding: 0px 20px;
        border: 1px solid lightgray;
        outline: none;
    }
    .login_pw2 {
        margin-top: 20px;
        width: 80%;
    }

    .login_pw2 input {
        width: 100%;
        height: 50px;
        border-radius: 30px;
        margin-top: 10px;
        padding: 0px 20px;
        border: 1px solid lightgray;
        outline: none;
    }

    .submit {
        margin-top: 50px;
        width: 80%;
    }
    .submit input {
        width: 100%;
        height: 50px;
        border: 0;
        outline: none;
        border-radius: 40px;
        background: linear-gradient(to left, rgb(149, 246, 44), rgb(123, 206, 35));
        color: white;
        font-size: 1.2em;
        letter-spacing: 2px;
    }
    </style>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./login.css">
</head>
<body>
	<div class="wrap">
        <div class="login">
            <h2>회원가입</h2>
            <form action="insertPro.jsp" method="post">
            <div class="login_id">
                <h4>ID</h4>
                <input type="text" name="id" id="" placeholder="ID">
            </div>
            <div class="login_name">
                <h4>Name</h4>
                <input type="text" name="name" id="pwd" placeholder="Name">
            </div>
            <div class="login_pw">
                <h4>Password</h4>
                <input type="password" name="pwd" id="pw1" placeholder="Password">
            </div>
            <div class="login_pw2">
                <h4>PasswordCheck</h4>
                <input type="password" name="" id="pw2" placeholder="Password">
            </div>
            <div class="submit">
                <input type="submit" value="회원가입" onclick="">
            </div>
            </form>
        </div>
    </div>
</body>
	<script>
    
    </script>
</html>
