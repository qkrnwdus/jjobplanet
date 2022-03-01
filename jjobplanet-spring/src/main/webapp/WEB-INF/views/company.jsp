<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="kr">
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
        <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8a2c8a1ec83ccc1693155f71e7da24e0"></script>
        <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
        <script src="./app.js"></script>
       
    </head>
    <body>
	    <div id="container">
            <div id="wrap">
            
           	 	<!-- HEADER -->
                <header>
					<jsp:include page="./header.jsp"/>
                </header>
	            
	            <!-- MAIN -->
	            <main>
					<section>
						<h2>회사 정보</h2>
						<div style="width: 792px; margin-top: 30px;">
							<div style="display: flex; width: 1200px;">
								<div style="width: 493px;">
									<dl>
										<dt class="company-info-head" >회사명</dt>
										<dd class="company-info-content">카카오</dd>
									</dl>
									<dl>
										<dt class="company-info-head" >산업</dt>
										<dd class="company-info-content">포털, 컨텐츠, 커뮤니티</dd>
									</dl>
									<dl>
										<dt class="company-info-head" >기업기분</dt>
										<dd  class="company-info-content">중소기업</dd>
									</dl>
									<dl>
										<dt class="company-info-head" >대표자</dt>
										<dd class="company-info-content">김진우</dd>
									</dl>
									
				
									<dl>
										<dt class="company-info-head" >4대 보험</dt>
										<dd class="company-info-content">국민연금, 건강보험, 고용보험, 산재보험</dd>
									</dl>
									<dl>
										<dt class="company-info-head" >주소</dt>
										<dd class="company-info-content">서울 강남구 삼성로 86길 35-6(대치동) 목천빌딩</dd>
									</dl>
			
								</div>
								
								<div style="width: 291px; margin-left: 12px;" >
									<dl>
										<dt class="company-info-head" >사원수</dt>
										<dd class="company-info-content">80</dd>
									</dl>
									
									<dl>
										<dt class="company-info-head" >설립일</dt>
										<dd class="company-info-content">2021.01.01</dd>
									</dl>
			
									<dl>
										<dt class="company-info-head" >주요사업</dt>
										<dd class="company-info-content">80</dd>
									</dl>
									
									<dl>
										<dt class="company-info-head" >홈페이지</dt>
										<dd class="company-info-content">http://www.kakao.com</dd>
									</dl>
								</div>
								<div>
									<div id="map" style="width:392px; height: 100%; margin-left: 12px;"></div>
							
									<script>
										let container = document.getElementById('map');
										let options = 
										{
											center: new kakao.maps.LatLng(33.450701, 126.570667),
											level: 3
										};
										let map = new kakao.maps.Map(container, options);
										let markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 
										let marker = new kakao.maps.Marker({ position: markerPosition});
										marker.setMap(map);
										map.setDraggable(false);
										map.setZoomable(false);    
									</script>
								</div> 
							</div>
						</div>
					</section>
	
					<section style="margin-top: 40px;">
						<h2>평균 평점</h2>
						<div style="margin-top: 30px; display: grid; row-gap: 16px;">

							<dl style="display:  flex; align-items: center;">
								<dt class="company-review-rating-head">별점</dt>
								<dd>
									<span class="material-icons">star</span>
									<span class="material-icons">star</span>
									<span class="material-icons">star</span>
									<span class="material-icons">star_half</span>
									<span class="material-icons">star_border</span>
								</dd>
							</dl>

							<dl style="display: flex; align-items: center;">
								<dt class="company-review-rating-head">복지 및 급여</dt>
								<dd>
									<div class="gage"></div>
								</dd>
							</dl>
			
							<dl style="display: flex; align-items: center;">
								<dt class="company-review-rating-head">업무와 삶의 균형</dt>
								<dd> <div class="gage"></div></dd>
							</dl>
			
			
							<dl style="display: flex; align-items: center;">
								<dt class="company-review-rating-head">사내문화</dt>
								<dd> <div class="gage"></div></dd>
							</dl>
			
							<dl style="display: flex; align-items: center;">
								<dt class="company-review-rating-head">승진 기회 및 가능성</dt>
								<dd> <div class="gage"></div></dd>
							</dl>
			
							<dl style="display: flex; align-items: center;">
								<dt class="company-review-rating-head">경영진</dt>
								<dd> <div class="gage"></div></dd>
							</dl>
						</div>
					</section>

					<section style="margin-top: 40px">
						<h2>리뷰</h2>
						<div style="display: flex; padding: 30px 0; border-bottom: solid #f5f5f5 1px;">
							<div>
								<div style="display: flex; align-items: center;">
									<span class="material-icons">face</span>
									<div style="font-weight: bold; margin-left: 4px;" >IT/인터넷 · 전 직원 · 서울 · 2021.11</div>
								</div>
								<div style="display: flex; align-items: center; margin: 8px 0;">
									
								</div>
								<div style="display: grid; row-gap: 16px;">

									<dl style="display:  flex; align-items: center;">
										<dt class="company-review-rating-head">별점</dt>
										<dd>
											<span class="material-icons">star</span>
											<span class="material-icons">star</span>
											<span class="material-icons">star</span>
											<span class="material-icons">star_half</span>
											<span class="material-icons">star_border</span>
										</dd>
									</dl>

									<dl style="display:  flex; align-items: center;">
										<dt class="company-review-rating-head">복지 및 급여</dt>
										<dd>
											<div class="gage"></div>
										</dd>
									</dl>
				
									<dl style="display: flex; align-items: center;">
										<dt class="company-review-rating-head">업무와 삶의 균형</dt>
										<dd> <div class="gage"></div></dd>
									</dl>
				
									<dl style="display: flex; align-items: center;">
										<dt class="company-review-rating-head">사내문화</dt>
										<dd> <div class="gage"></div></dd>
									</dl>
				
									<dl style="display: flex; align-items: center;">
										<dt class="company-review-rating-head">승진 기회 및 가능성</dt>
										<dd> <div class="gage"></div></dd>
									</dl>
				
									<dl style="display: flex; align-items: center;">
										<dt class="company-review-rating-head">경영진</dt>
										<dd> <div class="gage"></div></dd>
									</dl>
								</div>
							 
							</div>
							<div style="width: 691px; margin-left: 89px;">
								<div>
									<div style="font-weight: bold;">기업의 장점</div>
									<div style="margin-top: 16px; word-break:break-all">
										모든 국민은 보건에 관하여 국가의 보호를 받는다.
										국회는 정부의 동의없이 정부가 제출한 지출예산 각항의 금액을 증가하거나 새 비목을 설치할 수 없다.
										비상계엄하의 군사재판은 군인·군무원의 범죄나 군사에 관한 간첩죄의 경우와 
										초병·초소·유독음식물공급·포로에 관한 죄중 법률이 정한 경우에 한하여 단심으로 할 수 있다. 
										다만, 사형을 선고한 경우에는 그러하지 아니하다.
									</div>
								</div>
			
								<div  style="margin-top: 30px;">
									<div style="font-weight: bold;">기업의 단점</div>
									<div style="margin-top: 16px; word-break:break-all">
										모든 국민은 보건에 관하여 국가의 보호를 받는다.
										국회는 정부의 동의없이 정부가 제출한 지출예산 각항의 금액을 증가하거나 새 비목을 설치할 수 없다.
										비상계엄하의 군사재판은 군인·군무원의 범죄나 군사에 관한 간첩죄의 경우와 초병·초소·유독음식물공급·포로에 관한 죄중 법률이 정한 경우에 한하여 단심으로 할 수 있다. 
										다만, 사형을 선고한 경우에는 그러하지 아니하다.
									</div>
								</div>
			
								<div style="margin-top: 30px;">
									<div style="font-weight: bold;">기업의 한줄평</div>
									<div  style="margin-top: 16px;">
										모든 국민은 보건에 관하여 국가의 보호를 받는다.
									</div>
								</div>
							</div>
						</div>

						<div style="margin-top: 40px; display: flex; justify-content: center;">
							<button>더보기</button>
						</div>
					</section>
		            
	        
	            </main>
	        	<!-- FOOTER -->
                <footer>	 
					<jsp:include page="./footer.jsp"/>
                </footer>
	        </div>
           	
        </div>
    </body>
</html>