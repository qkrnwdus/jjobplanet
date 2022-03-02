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
               		 <div id="warp-main">
	                    <!-- 내용 -->
                        <h2>공지사항 작성</h2>
                        <form>
                            <div style="display: grid; row-gap: 16px;">
                                <input type="text" id="notice-editor-head" style="width: 500px; height: 70px; font-size: 30px;" placeholder="제목을 입력해 주세요" required>
                                <div id="editor"></div>
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
                                <button type="submit">공지사항 올리기</button>
                            </div>           
                        </form>        
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