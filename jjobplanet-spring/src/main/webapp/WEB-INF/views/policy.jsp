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
                        <div class="policy_upper_wrap" style="display: flex; justify-content: space-between;">
                            <span onclick="location.href='./policy'">이용약관</span>
                            <span onclick="location.href='./privacy'">개인정보처리방침</span>
                            <span onclick="location.href='./recruitService'">채용서비스 약관</span>
                            <span onclick="location.href='./notice'">공지사항</span>
                            <span onclick="location.href='./faq'">FAQ</span>
                        </div>
                        <!-- <div style="display: flex; justify-content: space-between;">
                            <button onclick="location.href='./policy'">이용약관</button>
                            <button onclick="location.href='./privacy'">개인정보처리방침</button>
                            <button onclick="location.href='./recruitService'">채용서비스 약관</button>
                            <button onclick="location.href='./notice'">공지사항</button>
                            <button onclick="location.href='./faq'">FAQ</button>
                        </div> -->
	                </div>
                    <div class="policy_body_wrap" style="padding: 16px; border: solid black 1px">
                        <div class="policy_contents_wrap">
                            <h1>이용약관</h1>
                            <h3>제 1조(목적)</h3>
                            <p>본 약관은 주식회사 브레인커머스(이하 "회사")가 제공하는 잡플래닛(jobplanet)및 잡플래닛 관련제반 서비스의 이용과 관련하여 "회사"와 회원간의 권리, 의무 및 책임사항 기타 필요한 사항을 규정함을 목적으로 한다.</p>
                            
                            <h3>제 2조(용어적 정의)</h3>
                            <p>이 약관에서 사용하는 용어의 정의는 아래와 같다</p>
                            <ul>
                                <li>1. "서비스"라 함은 PC, TV, 휴대용 단말기 등 각종 유무선 기기 또는 프로그램을 통하여 이용할 수 있도록 "회사"가 제공하는 모든 인터넷 서비스를 말하며, "회사"가 공개한 API를 이용하여 제3자가 개발 또는 구축한 프로그램이나 서비스를 통하여 이용 고객 또는 회원에게 제공되는 경우를 포함한다.</li>
                                <li>2. "회원"이라 함은 서비스를 이용하기 위하여 동 약관에 동의하거나 페이스북 등 연동 된 서비스를 통해 "회사"와 이용 계약을 체결한 자를 말한다.</li>
                                <li>3. "아이디"라 함은 회원의 식별과 회원의 서비스 이용을 위하여 "회원"이 가입 시 사용한 이메일 주소를 말한다.</li>
                                <li>4. "비밀번호"라 함은 "회사"의 서비스를 이용하려는 사람이 아이디를 부여 받은 자와 동일인임을 확인하고 "회원"의 권익을 보호하기 위하여 "회원"이 선정한 문자와 숫자의 조합을 말한다.</li>
                                <li>5. "비회원"이라 함은 "회원"에 가입하지 않고 "회사"가 제공하는 서비스를 이용하는 자를 말한다.</li>
                            </ul>
                            
                            <h3>제 3조(약관의 명시와 개정)</h3>
                            <ul>
                                <li>1. "회사"는 이 약관의 내용과 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처 등을 "회원"이 알 수 있도록 초기 화면에 게시하거나 기타의 방법으로 "회원"에게 공지해야 한다.</li>
                                <li>2. "회사"는 약관의규제관한법률, 전기통신기본법, 전기통신사업법, 정보통신망법, 통신비밀보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있다.</li>
                                <li>3. “회사”가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 제1항의 방식에 따라 그 개정약관의 적용일자 15일 전부터 적용일자 전일까지 공지한다. 다만, “회원”에게 불리한 약관의 개정의 경우에는 공지 외에 일정기간 서비스 내 전자우편, 로그인시 동의창 등의 전자적 수단을 통해 따로 명확히 통지하도록 한다.</li>
                                <li>4. "회사"가 전항에 따라 개정약관을 공지 또는 통지하면서 회원에게 개정약관 시행일로부터 7일 기간 내에 거부 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 회원이 명시적으로 거부의 의사표시를 하지 아니한 경우 회원이 개정약관에 동의한 것으로 본다.</li>
                                <li>5. "회원"이 개정약관의 적용에 동의하지 않는 경우 "회사"는 개정 약관의 내용을 적용할 수 없으며, 이 경우 "회원"은 이용계약을 해지할 수 있다. 다만, 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우에는 "회사"는 이용계약을 해지할 수 있다.</li>
                            </ul>
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