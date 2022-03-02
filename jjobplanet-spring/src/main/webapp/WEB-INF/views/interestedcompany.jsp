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
                                <a href="./mypage" style="margin-top: 20px;"><span class="material-icons-outlined" style="font-size: 90px;">face</span></a>
                                <div style="margin-top: 20px;"><a href="./passwordchange">비밀번호 변경</a></div>
                                <div style="margin-top: 20px;"><a href="./interestedcompany">관심 기업</a></div>
                                <div style="margin-top: 20px;"><a href="./reviewhistory">리뷰 작성 내역</a></div>
                                <div style="margin-top: 20px;"><a href="./writereview">리뷰 작성</a></div>
                            </div>
                            <div style="width: 957px;">
                                <h2>관심 기업</h2>
                                <div>총 2개의 관심기업이 있습니다.</div>
                                <div style=" margin-top: 30px; width: 100%;">
                                    <div style="display: flex; width: 100%; padding: 16px 0; align-items: center; border-bottom: solid #f5f5f5 1px;"">
                                        <span class="material-icons-outlined" style="font-size: 50px;">business</span>
                                        <div id = "company_contents_text1" style="margin-left: 16px;"> 
                                            <div class = "company_contents_text_item1">(주)오피지지</div> 
                                            <div class = "company_contents_text_item2">IT/웹/통신 | 서울</div> 
                                            <div class = "company_contents_text_item2">18 기업 리뷰</div>
                                        </div>
                                        <div class = "company_contents_text2">
                                            <div class = "company_contents_text_item3">총 만족도</div>
                                            <div class = "company_contents_text_item3">★★★☆☆</div>
                                            <div class = "company_contents_text_item3">평균 3,680만원</div>
                                        </div>
                                    </div>

                                    <div style="display: flex; width: 100%; padding: 16px 0; align-items: center; border-bottom: solid #f5f5f5 1px;"">
                                        <span class="material-icons-outlined" style="font-size: 50px;">business</span>
                                        <div id = "company_contents_text1" style="margin-left: 16px;"> 
                                            <div class = "company_contents_text_item1">(주)오피지지</div> 
                                            <div class = "company_contents_text_item2">IT/웹/통신 | 서울</div> 
                                            <div class = "company_contents_text_item2">18 기업 리뷰</div>
                                        </div>
                                        <div class = "company_contents_text2">
                                            <div class = "company_contents_text_item3">총 만족도</div>
                                            <div class = "company_contents_text_item3">★★★☆☆</div>
                                            <div class = "company_contents_text_item3">평균 3,680만원</div>
                                        </div>
                                    </div>

                                </div>
    
                            </div>
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