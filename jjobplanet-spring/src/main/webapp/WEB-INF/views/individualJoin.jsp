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
        
        <!-- SCRIPT-->
        <script src="./app.js"></script>   
        <script src="./jquery-3.6.0.min.js"></script> 
        
        <script>
        
        function formCheck() 
        {				
            let umail = $('#umail').val();
            let upw = $('#upw').val();
            let upw2 = $('#upw2').val();

            if (umail === '' || !validateEmail(umail)) alert('이메일을 다시 입력해 주세요');
            else if (upw === '' || upw2 === '') alert('비밀번호를 입력해 주세요');
            else if (upw !== upw2) alert('비밀번호가 일치하지 않습니다.');
            else {
                $.ajax({
                    url: 'joinOk.do',
                    method: 'POST',
                    data: {
                        'umail' : umail,
                        'upw' : upw				           
                    },
                    success : (response) => {
                        if(response.result === 'SUCCESS') location.href='joinOk.do';
                    },
                    error : (response) => { alert('오류가 발생하였습니다. 잠시후 재시도 해주세요'); }      
                })
            }			
        }

        function validateUserEmail() 
        {
            let mail = $('#umail').val();

            $.ajax({
                url: 'validate.do',
                method: 'POST',
                data: {
                    'mail' : mail,
                    'tpye' : 'user'				           
                },
                success : (response) => 
                {   
                    if(response.result === 'VALIDATED') alert('사용가능한 이메일 주소입니다.');
                    else alert('사용이 불가능한 이메일 주소입니다.');
                },
                error : (response) => {
                    alert('에러가 발생되어습니다. 잠시후 다시 해주세요')
                }      
            })
        }
        </script>

    </head>
    <body>
        <div style="display: flex; justify-content: center; align-items: center; min-height: 100vh;">
            <div>
                <div style="text-align: center;"><img style="width: 500px; height: auto;object-fit: cover; margin: 0 auto;" src="./img/recruit.png";></div>
                <div>
                    <h1>회원가입(개인)</h1>     
                    <div style="margin-top: 40px; display: block;">
                        <input type="email" name="umail" id="umail" placeholder="이메일">
                        <button onclick="validateUserEmail();">중복확인</button>
                    </div>
                    <div style="margin-top: 16px;">
                        <input type="password" size="20" id="upw" name="upw" placeholder="비밀번호">
                        <input type="password" size="20" id="upw2" name="upw2" placeholder="비밀번호 확인">
                    </div>

                    <div  style="margin-top: 16px;">
                        <textarea style="width: 500px; height: 200px;" readonly></textarea>
                    </div>
                    
                    <div style="margin-top: 16px;">    
                        <input type="checkbox" style="margin-right: 8px;">약관에 동의합니다.
                    </div>

                    <div style="margin-top: 16px;">    
                        <input type="submit"  value="가입완료" onclick="formCheck();">
                    </div>
                    
                </div>
            </div>  
        </div> 
    </body>
</html>