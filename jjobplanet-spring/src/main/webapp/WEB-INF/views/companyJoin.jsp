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
            let cmail = $('#cmail').val();
            let cpw = $('#cpw').val();
            let cpw2 = $('#cpw').val();
            let cname = $('#cname').val();
            let ccategory = $('#ccategory').val();
            let csize = $('#csize').val();
            let ceoname = $('#ceoname').val();
            let cinsurance = $('#cinsurance').val();
            let caddress = $('#caddress').val();
            let cnumber = $('#cnumber').val();
            let cworkers = $('#cworkers').val();
            let cdate = $('#cdate').val();
            let cmaintask = $('#cmaintask').val();
            let chomepage = $('#chomepage').val();


            if (cmail === ''  || !validateEmail(cmail)) alert('이메일을 다시 입력해 주세요 주세요');
            else if (cpw === '' || cpw2 === ''  || cpw !== cpw2) alert('비밀번호를 다시 입력 주세요');
            else if (cname === '') alert('이메일을 입력해 주세요');
            else if (ccategory === '') alert('이메일을 입력해 주세요');
            else if (csize === '') alert('이메일을 입력해 주세요');
            else if (ceoname === '') alert('이메일을 입력해 주세요');
            else if (cinsurance === '') alert('이메일을 입력해 주세요');
            else if (caddress === '') alert('이메일을 입력해 주세요');
            else if (cnumber === '') alert('이메일을 입력해 주세요');
            else if (cworkers === '') alert('이메일을 입력해 주세요');
            else if (cdate === '') alert('이메일을 입력해 주세요');
            else if (cmaintask === '') alert('이메일을 입력해 주세요');
            else if (chomepage === '') alert('이메일을 입력해 주세요');

            else {
                $.ajax({
                    url: 'joinokCompany.do',
                    method: 'POST',
                    dataType: "json",
                    data: {
                        'cmail' : cmail,
                        'cpw' : cpw,
                        'cname' : cname,				           
                        'ccategory' : ccategory,
                        'csize' : csize,
                        'ceoname' : ceoname,
                        'cinsurance' : cinsurance,
                        'caddress' : caddress,
                        'cnumber' : cnumber,
                        'cworkers' : cworkers,
                        'cdate' : cdate,
                        'cworkers' : cworkers,
                        'chomepage' : chomepage
                    },
                    success : (response) => { location.href = '/'; },
                    error : (response) => { alert('오류가 발생하였습니다. 잠시후 재시도 해주세요'); }

                })
            }			
        }

        function idCheck()
        {
            
        }
        
        </script>


    </head>
    <body>

        <div style="display: flex; justify-content: center; align-items: center; min-height: 100vh;">
            <div style="display: flex; flex-direction: column;">
                <div style="display: flex; justify-content: center;"><img style="width: 500px; height: auto;object-fit: cover;" src="./img/hire.png";></div>
                <div> 
                    
                    <h1>회원가입(기업)</h1>
                    <div style="margin-top: 40px;">
                        <dl>
                            <dt class="join-company-info-head">이메일</dt>
                            <dd>
                                <div>
                                    <input type="email" size="20" name="cmail" id="cmail">
                                    <input type="button" value="중복확인" id="join_button" onclick="idCheck();">
                                </div>
                            </dd>
                        </dl>
                    </div>
                    <div style="display: flex; justify-content: space-between;">                                                       
                            
                        <div>
                            <dl>
                                <dt class="join-company-info-head">비밀번호</dt>
                                <dd>
                                    <input type="password" size="20" id="cpw">
                                </dd>
                            </dl>

                            
                            <dl>
                                <dt class="join-company-info-head">기업명</dt>
                                <dd>
                                    <input type="text" size="20" id="cname">
                                </dd>
                            </dl>
                            <dl>
                                <dt class="join-company-info-head">산업</dt>
                                <dd>
                                    <input type="text" size="20" id="ccategory">
                                </dd>
                            </dl>
                            <dl>
                                <dt class="join-company-info-head">기업구분</dt>
                                <dd>
                                    <input type="text" size="20" id="csize">
                                </dd>
                            </dl>
                            <dl>
                                <dt class="join-company-info-head">대표자</dt>
                                <dd>
                                    <input type="text" size="20" id="ceoname">
                                </dd>
                            </dl>
                            <dl>
                                <dt class="join-company-info-head">4대 보험</dt>
                                <dd>
                                    <input type="text" size="20" id="cinsurance">
                                </dd>
                            </dl>


                            <dl>
                                <dt class="join-company-info-head">주소</dt>
                                <dd>
                                    <input type="text" size="60" id="caddress">
                                </dd>
                            </dl>
                            
                        </div>

                        <div>
                            <dl>
                                <dt class="join-company-info-head">비밀번호확인</dt>
                                <dd><input type="password" size="20" id="cpw2"></dd>
                            </dl>

                            <dl>
                                <dt class="join-company-info-head">사업자 번호</dt>
                                <dd><input type="text" size="20" id="cnumber"></dd>
                            </dl>
                            <dl>
                                <dt class="join-company-info-head">사원수</dt>
                                <dd><input type="text" size="20" id="cworkers"></dd>
                            </dl>
                            <dl>
                                <dt class="join-company-info-head">설립일</dt>
                                <dd><input type="text" size="20" ="cdate" id="cdate"></dd>
                            </dl>
                            <dl>
                                <dt class="join-company-info-head">주요사업</dt>
                                <dd><input type="text" size="20" id="cmaintask"></dd>
                            </dl>
                            <dl>
                                <dt class="join-company-info-head">홈페이지</dt>
                                <dd><input type="text" size="20" id="chomepage"></dd>
                            </dl>
                        </div>
                    </div>              
                <div>
                    <div style="margin-top: 16px;"  ><textarea style="width: 600px;height: 200px; "></textarea><br></div>
                    <div style="margin-top: 16px;" > <input type="checkbox" style="margin-right: 8px;" readonly>약관에 동의합니다.</div>
                    <div style="margin-top: 16px;"><button onclick="formCheck()">가입완료</button></div>
                </div>   
            </div> 
        </div>
    </body>
</html>