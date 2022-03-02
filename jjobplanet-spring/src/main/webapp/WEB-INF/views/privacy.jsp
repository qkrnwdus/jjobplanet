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
                        
	                </div>

                    <div class="policy_body_wrap" style="padding: 16px; border: solid black 1px">
                        <div class="policy_contents_wrap">
                            <h1>개인정보처리방침</h1>
                            <h3>1. 개인정보의 수집 및 이용목적</h3>
                            <p>기업정보 공유 사이트이자 어플리케이션인 잡플래닛(이하 "서비스"라 한다)은 효과적인 정보 공유에 적합한 서비스를 제공하기 위하여 개인정보를 수집하고 있으며 수집된 정보를 아래와 같이 이용하고 있습니다. 이용자가 제공한 모든 정보는 하기 목적에 필요한 용도 이외로는 사용되지 않으며 이용 목적이 변경될 시에는 사전 동의를 구할 것입니다.</p>
                            <dl>
                                <dt>1) 회원관리</dt>
                                <dd>- 회원제 서비스 이용에 따른 본인확인, 본인의 의사확인, 고객문의에 대한 응답, 새로운 정보의 소개 및 고지사항 전달</dd>
                                <dt>2) 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산</dt>
                                <dd>- 본인인증, 채용정보 매칭 및 컨텐츠 제공을 위한 개인식별, 회원간의 상호 연락, 적합한 채용후보자 및 취업알선, 각종 맞춤형 취업서비스 제공, 구매 및 요금 결제, 물품 및 증빙발송, 부정 이용방지와 비인가 사용방지</dd>
                                <dt>3) 서비스 개발 및 마케팅ᆞ광고에의 활용</dt>
                                <dd>- 맞춤 서비스 제공, 서비스 안내 및 이용권유, 서비스 개선 및 신규 서비스 개발을 위한 통계 및 접속빈도 파악, 통계학적 특성에 따른 광고 게재, 이벤트 정보 및 참여기회 제공, 설문참여 및 선물 제공</dd>
                                <dt>4) 고용 및 취업동향 파악을 위한 통계학적 분석</dt>
                            </dl>
                            <h3>2. 수집하는 개인정보 항목 및 수집방법</h3>
                            <p>"서비스"에서는 회원 가입 절차를 거쳐야 대부분의 컨텐츠에 자유롭게 접근할 수 있으며, 일부 개인정보 항목을 입력하지 않은 경우 서비스 이용에 제한이 있을 수 있습니다. 아래 중 일부 개인정보 항목은 현재에는 수집되고 있지 않으나 서비스 확장 과정에서 편의성 증대를 위해 수집될 예정입니다.</p>
                            <dl>
                                <dt>가. 수집하는 개인정보의 항목</dt>
                                <dd>1) 회원가입 시 수집하는 항목</dd>
                                <ul>
                                    <li>- 필수항목: 이름, 본인인증정보 또는 중복가입확인정보, 비밀번호, 생년월일, 성별, 연락처(전화번호/휴대폰번호), 경력연차, 직종, 주요업무, e-메일 / 페이스북 회원가입시 회원이 공개하기로 설정한 정보(선택가능)</li>
                                    <li>- 선택항목: 메일링 서비스 설정, 어플리케이션 서비스 설정, 회원이 직접 기입한 자신의 근무, 면접 경험이 있는 회사와 그 후기 내용</li>
                                </ul>
                                <dd>2) 이력서(프로필), 매칭 서비스 등록 시 수집하는 항목</dd>
                                <ul>
                                    <li>- 필수항목: 이름, 연락처(전화번호/휴대폰), e-메일, 우편번호, 주소, 학력사항, 경력사항, 고용형태, 희망연봉, 희망근무지, 지원분야(업직종), 자기소개서, 희망근무일시</li>
                                    <li>- 선택항목: 사진, 홈페이지, 희망급여, 취업우대사항(보훈대상, 취업보호대상, 장애여부, 병역사항), 사회활동, 수상내역, 교육이수내용, 자격증, OA능력, 컴퓨터 능력, 해외연수, 어학시험, 외국어 구사능력, 나의 성향(특기사항)</li>
                                </ul>
                                <dd>3) 기업인증 시 수집하는 항목</dd>
                                <ul>
                                    <li>- 필수항목: 회사명, 사업자등록번호, 지사여부, 대표자명, 우편번호, 주소, 담당자명, 본인인증정보 또는 중복가입확인정보, 비밀번호, 연락처(전화번호/휴대폰)</li>
                                </ul>
                                <dd>4) 채용정보서비스 등록 시 수집하는 항목</dd>
                                <ul>
                                    <li>직업안정법 시행령 제28조 직업정보제공사업자의 준수사항에 따라, 구인자의 신원을 명확히 하고, 허위정보 게재로 인한 피해를 방지하기 위해 담당자의 개인정보를 확인하고 있습니다.</li>
                                    <li>- 채용공고 등록시: 회사명, 담당자명, 연락처(전화번호/휴대폰), e-메일, 주소</li>
                                    <li>- 채용공고 신청시: 회사명, 담당자명, 연락처(전화번호/휴대폰), e-메일, 주소</li>
                                    <li>- 인재서칭(이력서열람) 신청시: 회사명, 담당자명, 중복가입확인정보, 소속부서, 연락처(전화번호/휴대폰), e-메일, 주소</li>
                                </ul>
                            </dl>
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