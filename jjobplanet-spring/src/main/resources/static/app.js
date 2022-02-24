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
	//location.href='./search.do';

    setCookie();
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
    
    document.cookie = keyword+"="+escape(keyword)+";"+"path=/; expires="+date.toGMTString()+";";
}
function removeCookie(key)
{
    let keyword = document.getElementById("history-" + key);
    let data = new Date() - 1 ;
    document.cookie=key + "=; path=/ expires="+data+";";
    keyword.remove();
    
    alert('aasa');
}