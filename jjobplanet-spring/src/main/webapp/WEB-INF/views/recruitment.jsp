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
        <link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">
        
        <!-- SCRIPT-->
        <script src="./app.js"></script>       
        <script src="./jquery-3.6.0.min.js"></script>
        <script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
        
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
               		 <div id="warp-main" >
                        <div style="display: flex;" >
                            <div style="width: 243px; height: 326px; text-align: center;">
                                <a href="./mypage_company" style="margin-top: 20px;"><span class="material-icons-outlined" style="font-size: 90px;">face</span></a>
                                <div style="margin-top: 20px;"><a href="./passwordchange_company">비밀번호 변경</a></div>
                                <div style="margin-top: 20px;"><a href="./jobpostinglist">채용공고 작성내역</a></div>
                                <div style="margin-top: 20px;"><a href="./recruitment">채용공고 작성</a></div>
                            </div>
                                <!-- 내용 -->
                            <div>
                                <h2>채용공고 작성 </h2>
                                <div id = "write_contents_notice_company">
                                    
                                    <div style="display: flex; align-items: center;">
                                        <div class="write_contents_notice_company1">기업명</div>
                                        <input type="text" class="write_contents_notice_company2">
                                    </div>
                                    <div style="display: flex; align-items: center;">
                                        <div class="write_contents_notice_company1">채용공고 명</div>	
                                        <input type="text" class="write_contents_notice_company2">
                                    </div>
                                    <div style="display: flex; align-items: center;">
                                        <div class="write_contents_notice_company1">담당업무</div>	
                                        <input type="text" class="write_contents_notice_company2">
                                    </div>
                                    <div style="display: flex; align-items: center;">
                                        <div class="write_contents_notice_company1">고용형태</div>	
                                        <input type="text" class="write_contents_notice_company2">
                                    </div>
                                    <div style="display: flex; align-items: center;">
                                        <div class="write_contents_notice_company1">겅력</div>	
                                        <input type="text" class="write_contents_notice_company2">
                                    </div>
                                    <div style="display: flex; align-items: center;">
                                        <div class="write_contents_notice_company1">근무지역</div>	
                                        <input type="text" class="write_contents_notice_company2">
                                    </div>
                                    <div id="editor" style="margin-top: 16px;"></div>
                                    <script>
										const editor = new toastui.Editor(
										{
											el: document.querySelector('#editor'),
											initialEditType: 'wysiwyg',
											width: '100%',
											height: '500px',
											initialValue: '',
											/* toolbarItems: [] */
										});
									</script>

                                    <div style="display: flex; margin-top: 16px;">
                                        <button style="float: left;">등록</button>
                                        <button style="float: left; margin-left: 20px;">취소</button>
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