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
           
        <script src="./jquery-3.6.0.min.js"></script>
        <script src="./app.js"></script>
        

        <script>		

        function login() 
        {
            let mail = $('#umail').val();
            let pw = $('#upw').val();
            let type = $('input[name="category"]:checked').val();

            if(umail === '' || upw === '') alert('이메일 또는 비밀번호를 다시 입력해주세요');
            else if(validateEmail(mail)) alert('이메일을 다시 입력해 주세요')
            else {
                $.ajax({
                    
                    url: 'login.do',
                    method: 'POST',
                    dataType: "json",
                    data: {
                        'type' : type,
                        'umail' : mail,
                        'upw' : pw
                    },
                    success : (response) => {
                        

                        let result = response;

                        console.log(result);

                        location.href='/';
                        
                        // if(response.result === 'SUCCESS')
                        // {
                        
                        //  	
                        //      console.log('aa');
                        // } else alert('아이디 또는 비밀번호가 맞지 않습니다');
                    },
                    error: (response) => {
                        alert('오류가 발생하였습니다. 잠시후 재시도 해주세요');
                    }	      
                })
            }
            
        }
		</script>

    </head>
    <body>
        <div style="display: flex; justify-content: center; align-items: center; min-height: 100vh;">
            <div>    
                <img style="width: 500px; height: auto;object-fit: cover;" src="./img/recruit.png";>
                <h1 style="text-align: center;">로그인</h1>        
                <div class="join_div" style="text-align: center;">                                   
                    <div style="margin-top: 16px;">
                        <input type="radio" value="user" name="category" style="margin-right: 4px" checked>개인
                        <input type="radio" value="company" name="category" style="margin-right: 4px; margin-left: 8px;">기업
                    </div>

                    <div style="margin-top: 16px;"><input id="umail" type="text" size="20" placeholder="이메일"></div>
                    <div style="margin-top: 16px"> <input id="upw" type="password" size="20"placeholder="비밀번호">
                    </div>
                    <div class="login_input" style="margin-top: 16px;">
                        <button onclick="login()" id="join_button">로그인</button>
                        <button onclick="location.href='./join'" id="join_button">회원가입</button>
                        <button onclick="location.href='./findPassword'" id="join_button">비밀번호 찾기</button>
                    </div>      
                </div>
            </div>                      
        </div>          
    </body>
</html>