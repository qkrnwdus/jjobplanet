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
        <script>
			window.onload = () => { $(".notice_note_row").hide(); }
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
	                    <!-- 내용 -->
                        <div class="policy_upper_wrap" style="display: flex; justify-content: space-between;">
                            <span onclick="location.href='./policy'">이용약관</span>
                            <span onclick="location.href='./privacy'">개인정보처리방침</span>
                            <span onclick="location.href='./recruitService'">채용서비스 약관</span>
                            <span onclick="location.href='./notice'">공지사항</span>
                            <span onclick="location.href='./faq'">FAQ</span>
                        </div>
                        <div class="policy_body_wrap">
                            <div>
                                <h1>공지사항</h1>
                                <div class="notice_top_row">
                                    <span class="notice_title">제목</span>
                                    <span class="notice_date">등록일</span>
                                </div>
                                <div class="notice_td_row">
                                    <span class="notice_title"><a href="javascript:openNotice(${noticeviewList[0]});">${noticeviewList[1]}</a></span>
                                    <span class="notice_date">${noticeviewList[2]}</span>
                                </div>
                                <div id="notice_notice7" class="notice_note_row">
                                    <span class="notice_note">${noticeviewList[3]}</span>
                                </div>
                                <div class="notice_td_row">
                                    <span class="notice_title"><a href="javascript:openNotice(${noticeviewList[4]});">${noticeviewList[5]}</a></span>
                                    <span class="notice_date">${noticeviewList[6]}</span>
                                </div>
                                <div id="notice_notice8" class="notice_note_row">
                                    <span class="notice_note">${noticeviewList[7]}</span>
                                </div>
                                <div class="notice_td_row">
                                    <span class="notice_title"><a href="javascript:openNotice(${noticeviewList[8]});">${noticeviewList[9]}</a></span>
                                    <span class="notice_date">${noticeviewList[10]}</span>
                                </div>
                                <div id="notice_notice9" class="notice_note_row">
                                    <span class="notice_note">${noticeviewList[11]}</span>
                                </div>
                                <div class="notice_td_row">
                                    <span class="notice_title"><a href="javascript:openNotice(${noticeviewList[12]});">${noticeviewList[13]}</a></span>
                                    <span class="notice_date">${noticeviewList[14]}</span>
                                </div>
                                <div id="notice_notice10" class="notice_note_row">
                                    <span class="notice_note">${noticeviewList[15]}</span>
                                </div>
                                <div class="notice_td_row">
                                    <span class="notice_title"><a href="javascript:openNotice(${noticeviewList[16]});">${noticeviewList[17]}</a></span>
                                    <span class="notice_date">${noticeviewList[18]}</span>
                                </div>
                                <div id="notice_notice11" class="notice_note_row">
                                    <span class="notice_note">${noticeviewList[19]}</span>
                                </div>
                  
                                <a href="<%= request.getContextPath() %>/noticeWrite.do"><input type="button" value="작성" style="float:right;"></a>
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