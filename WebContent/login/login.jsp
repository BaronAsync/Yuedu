<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
<title>欢迎光临复旦大学日月光华BBS</title>
<style type="text/css">
body, div, img, ul, li, h1, p, input { margin: 0; padding: 0; }
body, label, input { font-family: "Microsoft YaHei", "WenQuanYi ZenHei", "SimSun", "Gill Sans MT", Verdana, sans-serif; font-size: 16px; }
body { width: 100%; }
img { border: none; }
a { text-decoration: none; }

#container { width: 950px; margin: 20px auto 0; }
#left { float: left; width: 300px; }
#right { float: right; width: 645px; margin: 0 0 10px 0; }
#footer { clear: both; border-top: 1px solid #e0e0e0; padding: 7px 0 0; font-size: 14px; }

h1 { font-size: 32px; color: #aba494; margin: 18px 0 18px 0; }
label { display: block; font-weight: bold; font-size: 16px; margin: 5px 0 2px 0; }
input { border: 1px solid #c0c0c0; }
#id, #pw { height: 36px; width: 275px; padding: 0 0 0 5px; }
#login { width: 282px; background-color: #bacbf7; }
#reg { display: block; width: 282px; background-color: #bac2cf; line-height: 36px; }
#login, #reg { height: 36px; text-align: center; color: #fff; font-weight: bold; font-size: 18px; border: none; margin: 12px 0 0; }
#persistent { display: inline-block; text-align: left; margin: 12px 5px 0 5px; }
#for_cb { display: inline; font-weight: normal; font-size: 14px; }
#tip { color: #808080; }

ul { list-style-type: none; }
ul#links { margin: 15px 0 0; }
#links li { font-size: 14px; margin: 4px 0; width: 280px; text-align: center; }
#links li a, #more li a { color: #00a2e8; }
#more { display: none; -moz-column-count: 3; -webkit-column-count: 3; -column-count: 3; }
#more li { font-size: 14px; text-align: center; }
li#guest { margin: 0 0 15px; }
li#guest a { color: #000; }

#footer, #footer a { color: #808080; }
#extra { float: left; }
#extra li { display: inline; padding: 0 16px 0 0; }
#copyright { float: right; }
</style>
</head>
<body>
<div id='container'>
<div id='left'>
<h1>日月光华</h1>
<form id='box' method='post' action='bbs/login'>
<label for='id'>账号</label>
<input id='id' type='text' name='id' class='txt' placeholder='请输入账号'/>
<label for='pw'>密码</label>
<input id='pw' type='password' name='pw' class='txt' placeholder='请输入密码'/>
<input id='persistent' type='checkbox' name='persistent' checked='checked'/><label id='for_cb' for='persistent'>下次自动登录<span id='tip'>（公用电脑请勿选择）</span></label>
<input id='login' type='submit' value='登录'/>
</form>

<a id='reg' href='reg.htm'>注册</a>

<ul id='links'>
<li id='guest'><a href='bbs/top10'>随便看看</a></li>
<li><a href='/banner.htm'>Web进站展示</a></li>
<li><a href='/wallpaper.htm'>光华壁纸下载</a></li>
<li><a href='/software/FTerm2.5.0.154.exe'>FTerm</a> / <a href='/software/CTerm3.24.rar'>Cterm</a> / <a href='#' id='sw'>其他工具</a></li>
</ul>
<ul id='more'>
<li><a href='/software/Ansieditor2.03e.exe'>AnsiEditor</a></li>
<li><a href='/software/Bmp2Ascii.exe'>Bmp2Ascii</a></li>
<li><a href='/software/netterm32428.exe'>NetTerm</a></li>
<li><a href='/software/Cterm2000.exe'>CTerm2000</a></li>
<li><a href='/software/STerm2.549.rar'>S-Term</a></li>
<li><a href='/software/qterm-0.4.0pre1.tar.gz'>Qterm</a></li>
</ul>

</div>
<div id='right'>
<img src='${pageContext.request.contextPath}/image/153-2016-summer-AnnSong.jpg'>
<!--<embed id="flash" width="640" height="480" quality="high" bgcolor="#ffffff" wmode="transparent" name="flash" style="" src="images/home/85-2011-summer-angelstep.swf" type="application/x-shockwave-flash"/>-->
</div>
<footer id='footer'>
<ul id='extra'>
<li><a href='/m/'>手机登录（测试）</a></li>
<li><a href='/q/'>附属站复旦泉</a></li>
<li><a href='/qm/'>复旦泉手机登录</a></li>
</ul>
<p id='copyright'><strong>日月光华站 版权所有 &copy;1996-2016 </strong><a href='http://app.shca.gov.cn/enterprise/jsp/special/shca.gov.cn/IcpInfos.jsp?recordsn=5407'>沪ICP备042465</a></p>
</footer>
</div>
<script src='/js/jquery-1.4.2.min.js'></script>
<script>
$(document).ready(function() {
	$('#id').focus();
	$('#sw').click(function() { $('#more').toggle(); return false; });
	$('#login').click(function() {
		if ($('#id').val().length < 1 || $('#pw').val().length < 1)
			return false;
	});

	$.getJSON('bbs/login.json', function(data) {
		if (data.code == 10002) { location.assign('bbs/top10'); }
	});
});
</script>
</body>
</html>