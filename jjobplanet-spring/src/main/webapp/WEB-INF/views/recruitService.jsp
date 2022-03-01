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
               		 <div id="warp-main" >
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
                            <h1>채용서비스 약관</h1>
                            <h3>제 1조(서비스 이용신청)</h3>
                            <ul>
                                <li>1. "회사"의 서비스를 이용하고자 하는 자(이하 "신청자")가 본 약관과 개인정보취급방침을 읽고 "동의" 또는 "확인" 버튼을 누른 경우 본 약관에 동의하여 신청한 것으로 간주한다.</li>
                                <li>２. "신청자"는 신청에 있어 "회사"에게 사업자정보와 신청자 본인 여부를 확인하기 위해 인증에 필요한 정보를 제공하여야 하며, 전문기관을 통한 인증 절차를 거칠 수 있다.</li>
                                <li>３. "회사"는 인증 과정에서 필요 시 "신청자에게" 사업자정보를 확인할 수 있는 증명서(사업자등록증), 재직증명서 등을 별도로 요구할 수 있다.</li>
                                <li>４. "신청자"가 사업자등록번호가 없는 기관이나 단체, "사이트"에 제공된 수단으로 본인인증이 불가한 경우 "회사"가 정한 별도의 절차에 따라 이용계약을 할 수 있다.</li>
                            </ul>			
                            
                            <h3>제 2 조 (이용신청의 승낙과 제한)</h3>
                            <ul>
                                <li>1. "회사"는 전조의 규정에 의한 이용신청 고객에 대하여 업무수행상 또는 기술상 지장이 없는 경우에는 원칙적으로 접수순서에 따라 서비스 이용을 승낙한다.</li>
                                <li>2. "회사"는 아래 사항에 해당하는 경우에 대해서는 이용신청을 승낙하지 아니하거나 유보할 수 있다.</li>
                                <li>가) 실제 회사명과 사업자등록번호가 아니거나 타사/타인의 정보를 이용하여 신청한 경우</li>
                                <li>나) 이용계약 신청서의 내용을 허위로 기재한 경우</li>
                                <li>다) 휴·폐업 사업자등록번호로 등록한 경우</li>
                                <li>라) "회사"의 설비, 기술상, 정책상 사정으로 이용 승낙이 곤란한 경우</li>
                            </ul>
                            
                            <h3>제 3조("신청자"의 의무와 책임)</h3>
                            <ul>
                                <li>1. "신청자"는 구직자들이 채용공고를 열람한 후 해당 기업에 대한 판단을 돕기 위해 기업정보를 정확히 기재하여야 한다.</li>
                                <li>2. "신청자"는 직업안정법 제34조 및 동법 시행령 제 34조 거짓구인광고 또는 거짓구인조건제시의 범위에 위배되지 않도록 채용공고를 작성하여 등록해야 하며, 거짓구인광고 또는 거짓구인조건제시의 범위는 다음 각 호의 어느 하나에 해당하는 것으로 한다.</li>
                                <li>가) 구인을 가장하여 물품판매, 수강생 모집, 직업소개, 부업알선, 자금모집 등을 행하는 광고</li>
                                <li>나) 거짓 구인을 목적으로 구인자의 신원(업체명 또는 성명)을 표시하지 아니하는 광고</li>
                                <li>다) 구인자가 제시한 직종, 고용형태, 근로조건 등이 응모할 때의 그것과 현저히 다른 광고</li>
                                <li>라) 기타 공고의 중요 내용이 사실과 다른 광고</li>
                                <li>３. "신청자"는 관련 법률에 의거하여 근로자의 모집 및 채용에 있어서 남녀, 연령을 차별하여서는 아니되며, 15세 미만자에 대하여 채용 모집을 할 수 없다.</li>
                                <li>４. "신청자"는 다른 회원에게 "회사"가 제시하는 별도의 커뮤니케이션을 통하여 연락을 취할 수 있다. 단, 채용 목적에 국한되어야 하며, 기업의 영업ㆍ마케팅ㆍ제3자 제공 시에는 개인정보보호법, 직업안정법, 정보통신망이용촉진 및 정보보호 등에 관한 법률에 의거하여 법적 책임을 질 수 있다.</li>
                                <li>5. 관계 법령을 위반한 경우 이에 대한 책임은 전적으로 "신청자"에게 있다.</li>
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