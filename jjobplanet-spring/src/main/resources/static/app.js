/**
 * 
 */
 
let isFocusedInput = false;
	
function focusInput() {
    const focus = document.activeElement.id;
		
    if( focus === 'search-input' && isFocusedInput == false) isFocusedInput = true;
    else isFocusedInput = false;

    notifyInput();                
}

function notifyInput() {
    if(isFocusedInput == false) document.getElementById("search-history").style.display = 'none';
    else document.getElementById("search-history").style.display = 'block';

    let input_ = document.getElementById("search-input").value;
    
    if(input_.length > 0) document.getElementById("input-clear").style.display='block';
    else document.getElementById("input-clear").style.display='none';
}
document.addEventListener('mouseup', focusInput);

function clearSearchInput(){
	let input = document.getElementById("search-input");
	input.value = '';
    document.getElementById("input-clear").style.display='none';
}

function search()
{
    setCookie();

    let keyword = document.getElementById("search-input").value;
    let cat =  'sample';
    let region =  'sample';
    let career = 'sample';

    location.href='./search.do?q='+keyword+'&cat='+cat+'&region='+region+'&career='+career;
}

function applyCompany()
{
	alert('지원');
}

function addWishlist()
{
	alert('관심 기업 등록');
}

function openAnswer(id)
{
    $("#faq_answer"+id).toggle();
}
function openNotice(id)
{
    $("#notice_notice"+id).toggle();
}

function setCookie()
{
    let keyword = document.getElementById("search-input").value;

    let date = new Date();
    date.setDate(date.getDate() + 365);
    
    document.cookie = keyword + "=" + keyword + "; path=/; secure=none; expires=" + date.toGMTString() + ";";
}

function getCookie()
{
        
    $('#history-item').empty();

    let container = document.getElementById("history-item");

    let cookies = document.cookie;
    if(cookies === '') container.innerText = '최근 검색 내역이 없습니다';
    else {
        cookies = cookies.split('; ');

        for( item in cookies) 
        {
            let tmp = cookies[item].split("=")[0];

            container.innerHTML += '<li><div style="display: flex; align-items: center;">'
            + '<a style="width: 100%" href="./search.do?q='+tmp+'">'+tmp+'</a>'
            + '<div style="display: flex;  flex-direction: column;" onclick="removeCookie(\''+tmp+'\');">'
            + '<span class="material-icons" style="cursor: pointer">clear</span>'
            + '</div>'
            + '</div></li>';
        }
    }
}

function removeCookies() 
{
    let data = new Date();

    let cookies = document.cookie.split('; ');
    for(item in cookies)
    {
        let ky = cookies[item].split("=")[0];

        console.log(ky);
        
        document.cookie = ky + '=key; path=/; expires=' + data.toGMTString()+';';
    }
    
    $('#history-item').empty();
}
function removeCookie(key)
{
    let data = new Date();
    document.cookie = key + '=key; path=/; expires=' + data.toGMTString()+';';
    getCookie();
}

function validateEmail(email)
{
    const regx = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;

    if(regx.test(email)) return true;
    else return false;
}