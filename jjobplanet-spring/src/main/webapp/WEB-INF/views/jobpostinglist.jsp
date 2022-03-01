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
		<div id="container">
            <div id="wrap">
                <!-- HEADER -->
                <header>
					<jsp:include page="./header.jsp"/>
                </header>
                
                <!--  MAIN -->
               	<main>
               		 <div id="warp-main">
	                    <!-- 내용 -->
                        <div style="display: flex;">
                            <div style="width: 243px; height: 326px; text-align: center;">
                                <a href="./mypage_company" style="margin-top: 20px;"><span class="material-icons-outlined" style="font-size: 90px;">face</span></a>
                                <div style="margin-top: 20px;"><a href="./passwordchange_company">비밀번호 변경</a></div>
                                <div style="margin-top: 20px;"><a href="./jobpostinglist">채용공고 작성내역</a></div>
                                <div style="margin-top: 20px;"><a href="./recruitment">채용공고 작성</a></div>
                            </div>
                            <div>
                                <!-- 내용 -->
                                <div style="width: 957px;">
                                <h2>채용 공고 작성내역</h2>
                                    <div>총 4개의 채용공고 작성 내역이 있습니다.</div>
                                    <div style="margin-top: 30px; width: 100%;">
                                        <div style="display: flex; width: 100%; margin-bottom: 16px; align-items: center;">
                                            <div style="width : 5px;  float  : left">　</div>
                                            <div style="width : 80px;  float : left">#</div>
                                            <div style="width : 300px; float : left">제목</div>
                                            <div style="width : 140px; float : left">채용 상태</div>
                                            <div style="width : 200px; float : left">작성일</div>
                                        </div>
                                        <div style="display: flex; width: 100%; margin-bottom: 16px; align-items: center;">
                                            <div style="width : 5px;   float : left">　</div>
                                            <div style="width : 80px;  float : left">1</div>
                                            <div style="width : 300px; float : left"><a href="#"> 백엔드 개발자 채용공고</a></div>
                                            <div style="width : 140px; float : left">채용중</div>
                                            <div style="width : 200px; float : left">2022-02-10</div>
                                            <div style="width : 50px;  float : left">수정</div>
                                            <div style="width : 50px;  float : left">삭제</div>
                                        </div>
                                        <div style="display: flex; width: 100%; margin-bottom: 16px; align-items: center;">
                                            <div style="width : 5px;   float : left">　</div>
                                            <div style="width : 80px;  float : left">2</div>
                                            <div style="width : 300px; float : left"><a href="#"> 프론트엔드 개발자 채용공고</a></div>
                                            <div style="width : 140px; float : left">채용대기</div>
                                            <div style="width : 200px; float : left">2022-02-10</div>
                                            <div style="width : 50px;  float : left">수정</div>
                                            <div style="width : 50px;  float : left">삭제</div>
                                        </div>
                                        <div style="display: flex; width: 100%; margin-bottom: 16px; align-items: center;">
                                            <div style="width : 5px;   float : left">　</div>
                                            <div style="width : 80px;  float : left">3</div>
                                            <div style="width : 300px; float : left"><a href="#"> 퍼블리셔 채용공고</a></div>
                                            <div style="width : 140px; float : left">채용중</div>
                                            <div style="width : 200px; float : left">2022-02-10</div>
                                            <div style="width : 50px;  float : left">수정</div>
                                            <div style="width : 50px;  float : left">삭제</div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- 내용 -->
                       </div>
	                </div>
                </main>
                <!-- FOOTER -->
                <footer>	 
					<jsp:include page="./footer.jsp"/>
                </footer>
            </div>
        </div>
    </body>
</html>