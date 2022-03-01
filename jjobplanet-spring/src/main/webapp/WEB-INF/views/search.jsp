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
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">
        
        <!-- SCRIPT-->
        <script src="./app.js"></script>
        <script>
            let option1 = false;
            let option2 = false;
            let option3 = false;
            function showOption1()
            {
                if(option1 == false )
                {
                    option1 = true;
                    document.getElementById("search-option-recruitcategory").style.display='block';
                } else {
                    option1 = false;
                    document.getElementById("search-option-recruitcategory").style.display='none';
                }

                document.getElementById("search-option-region").style.display='none';
                document.getElementById("search-option-condition").style.display='none';
            }

            function showOption2()
            {
                if(option2 == false )
                {
                    option2 = true;
                    document.getElementById("search-option-region").style.display='block';
                } else {
                    option2 = false;
                    document.getElementById("search-option-region").style.display='none';
                }
                document.getElementById("search-option-recruitcategory").style.display='none';
                document.getElementById("search-option-condition").style.display='none';
            }

            function showOption3()
            {
                if(option3 == false )
                {
                    option3 = true;
                    document.getElementById("search-option-condition").style.display='block';
                } else {
                    option3 = false;
                    document.getElementById("search-option-condition").style.display='none';
                }
                document.getElementById("search-option-recruitcategory").style.display='none';
                document.getElementById("search-option-region").style.display='none';
            }

            function research() {
                
                let keyword = '<%= request.getParameter("key")%>';
                let cat = $('input[name="recruitcategory:checked"]').val();
                let region = $('input[name="region:checked"]').val();
                let career = $('input[name="condition:checked"]').val();


                console.log(cat);
                console.log(region);
                console.log(career);


                $.ajax({
                    url: '/search.do',
                    method: 'GET',
                    data: {
                        'key': keyword,
                        'cat': cat,
                        'region': region,
                        'career': career
                    },
                    success: (response) => {

                    },
                    error: (response) => {
                        
                    }

                })

                
            }


            
        </script>
       
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
               		<div>
               			<div style="display:flex;">
               				<div onclick="showOption1()">
           						<div class="search-filter">
                                    <span style="width: 100%; margin-right: 16px">채용분야</span>
                                    <span class="material-icons">expand_more</span>
                                </div>   
                                <div id="search-option-recruitcategory" >
                                    <ul>
                                        <li><input type="radio" name="recruitcategory" value="1" checked>프론트엔드</li>
                                        <li><input type="radio" name="recruitcategory" value="2">백엔드</li>
                                        <li><input type="radio" name="recruitcategory" value="3">모바일</li>
                                        <li><input type="radio" name="recruitcategory" value="4">AI/ML</li>
                                        <li><input type="radio" name="recruitcategory" value="5">데브옵스</li>
                                        <li><input type="radio" name="recruitcategory" value="6">QA</li>
                                        <li><input type="radio" name="recruitcategory" value="7">GAME</li>
                                        <li><input type="radio" name="recruitcategory" value="8">임베디드</li>
                                        <li><input type="radio" name="recruitcategory" value="9">보안</li>
                                    </ul>
                                </div>
               				</div>
                          
                            <div onclick="showOption2()" >
                              	<div class="search-filter">
                                    <span style="width: 100%; margin-right: 16px">지역</span>
                                    <span class="material-icons">expand_more</span>
                                    
                                </div>
                                <div id="search-option-region" >
                                    <ul>
                                        <li><input type="radio" name="region" value="1" checked>서울</li>
                                        <li><input type="radio" name="region" value="2">부산</li>
                                        <li><input type="radio" name="region" value="3">대구</li>
                                        <li><input type="radio" name="region" value="4">인천</li>
                                        <li><input type="radio" name="region" value="5">대전</li>
                                        <li><input type="radio" name="region" value="6">광주</li>
                                        <li><input type="radio" name="region" value="7">울산</li>
                                        <li><input type="radio" name="region" value="8">세종</li>
                                        <li><input type="radio" name="region" value="9">제주</li>
                                    </ul>
                                </div>
                            </div>

                            <div onclick="showOption3()" >
                              	<div class="search-filter">
                                    <span style="width: 100%; margin-right: 16px">경력</span>
                                    <span class="material-icons">expand_more</span>
                                    
                                </div>
                                <div id="search-option-condition" >
                                    <ul>
                                        <li><input type="radio" name="condition" value="0" checked>경력무관</li>
                                        <li><input type="radio" name="condition" value="1">신입</li>
                                        <li><input type="radio" name="condition" value="2">경력(1년이상)</li>
                                       
                                    </ul>
                                </div>
                            </div>
                            <button onclick="research()">재검색</button>
               			</div>

                        <div id="search-result">
                            <div class="search-result-item" onclick="location.href='./company'">
                                <div style="width: 100%; margin-left: 16px;">
                                    <div>카카오</div>
                                    <div>iOS 개발자 채용</div>
                                    <div>iOS · Swift · autolayout · RESTful-API · Firebase · FCM  · MVVM · GIT</div>
                                </div>
                                <div style="margin-right: 16px;">
                                    <button style="display: block;" onclick="addWishlist();">관심 기업 등록</button>
                                    <button style="display: block; margin-top: 10px ;" onclick="applyCompany();">지원하기</button>
                                </div>
                            </div>

                            <div class="search-result-item" onclick="location.href='./company'" >
                                <div style="width: 100%; margin-left: 16px;">
                                    <div>카카오</div>
                                    <div >iOS 개발자 채용</div>
                                    <div>iOS · Swift · autolayout · RESTful-API · Firebase · FCM  · MVVM · GIT</div>
                                </div>
                                <div style="margin-right: 16px;">
                                    <button style="display: block;" onclick="addWishlist();">관심 기업 등록</button>
                                    <button style="display: block; margin-top: 10px ;" onclick="applyCompany();">지원하기</button>
                                </div>
                            </div>
                            
                            <div class="search-result-item" onclick="location.href='./company'">
                                <div style="width: 100%; margin-left: 16px;">
                                    <div>카카오</div>
                                    <div >iOS 개발자 채용</div>
                                    <div>iOS · Swift · autolayout · RESTful-API · Firebase · FCM  · MVVM · GIT</div>
                                </div>
                                <div style="margin-right: 16px;">
                                    <button style="display: block;" onclick="addWishlist();">관심 기업 등록</button>
                                    <button style="display: block; margin-top: 10px ;" onclick="applyCompany();">지원하기</button>
                                </div>
                            </div>
                            <div class="search-result-item" onclick="location.href='./company'">
                                <div style="width: 100%; margin-left: 16px;">
                                    <div>카카오</div>
                                    <div >iOS 개발자 채용</div>
                                    <div>iOS · Swift · autolayout · RESTful-API · Firebase · FCM  · MVVM · GIT</div>
                                </div>
                                <div style="margin-right: 16px;">
                                    <button style="display: block;" onclick="addWishlist();">관심 기업 등록</button>
                                    <button style="display: block; margin-top: 10px ;" onclick="applyCompany();">지원하기</button>
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