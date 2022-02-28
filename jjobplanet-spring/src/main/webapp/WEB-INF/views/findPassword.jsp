<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- INFORMATION -->
        <title>NO.1 기업 정보 플랫폼 | 잡플래닛</title>

        <!-- METAS-->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!-- STYLE-->
        <link rel="stylesheet" href="./style.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">
        
        <!-- SCRIPT-->
        <script src="./app.js"></script>       
        <script src="./jquery-3.6.0.min.js"></script>
        
    </head>
    <body>
		<div style="display: flex; justify-content: center; align-items: center; min-height: 100vh;">
            <form neme="findPassword" method="post" action="findPasswordOk.do">
                <img style="width: 500px; height: auto;object-fit: cover;" src="./img/hire.png";>
                <div class="join_div" style="display: flex; justify-content: center">                                   
                    <div style="text-align: center; margin-top: 40px;">
                        <div><h3>비밀번호 찾기</h3></div>
                        <div style="margin-top: 16px;">
                            <input type="radio" style="margin-right: 8px;">개인
                            <input type="radio" style="margin-left: 16px; margin-right: 8px;">기업
                        </div>
                        <div style="margin-top: 16px;"><input type="email" size="30" name="email" placeholder="이메일"></div>
                        <div style="margin-top: 16px;"><button onclick="location.href='./findPasswordOk'">비밀번호찾기</button></div>
                    </div>            
                </div>
            </form>          
        </div> 
    </body>
</html>