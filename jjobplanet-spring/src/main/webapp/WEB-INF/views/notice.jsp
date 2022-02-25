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
                                    <span class="notice_title"><a href="javascript:openNotice(1);">1/28일(금)~2/2일(수) 잡플래닛 고객센터 설 휴무 진행 안내</a></span>                                   
                                    <span class="notice_date">2020-02-02</span>
                                </div>
                                <div id="notice_notice1" class="notice_note_row">
                                    <span class="notice_note">
                                        안녕하세요, 회원님!
                                        잡플래닛에 대한 관심과 이용에 진심으로 감사드립니다.
                                        2022년 설 연휴 기간 고객센터 휴무 일정을 알려드립니다.
                                        2022-1-28일(금)~2022-2-2일(수), 연말 연휴를 맞아 고객센터의 상담 업무가 중단 될 예정입니다.
                                        위 기간 동안 잡플래닛 고객센터 전화(1644-5641) 및 이메일 문의 답변이 진행되지 않으므로 서비스 이용에 참고 부탁드립니다.
                                        (단, 권리침해 신고센터는 정상 운영하며, 기존에 접수해두신 건들은 연휴 기간 중에도 순차적으로 처리결과 답변이 발송됩니다.)
                                        휴무 중에도 이메일, 사이트 내 '고객문의' 위젯(우측 하단 회색물음표 버튼)을 통한 문의 접수는 24시간 가능합니다. 
                                        문의 확인과 답변은 정상 업무가 시작되는 2022-2-3(목)부터 순차적으로 신속하게 답변드리겠습니다.
                                        임인년 새해 복 많이 받으세요!
                                        감사합니다.
                                    </span>
                                </div>
                                <!--
                                <div class="notice_td_row">
                                    <span class="notice_title"><a href="javascript:openNotice(2);">공지제목입니다2</a></span>
                                    <span class="notice_date">2020-02-02</span>
                                </div>
                                <div id="notice_notice2" class="notice_note_row">
                                    <span class="notice_note">공지내용입니다2</span>
                                </div>
                                -->
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