<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<?php echo $html->charset(); ?>
	<title>
		<?php echo $title_for_layout; ?>
	</title>
	<SCRIPT language="javascript">AC_FL_RunContent = 0;</SCRIPT>
	<?php
		echo $html->css(array('global','header','s','park-3'));
		echo $javascript->link(array('swfobject','head-10','common-2','prototype-1.4.0','s','cookie','dialog-1','app_friend','swfobject','AC_RunActiveContent','parking-8','friend_singlesuggest'));
	?>
</head>
<body onload="javascript:if ('function' == typeof(_bodyonload)) { _bodyonload(event); };"
 onunload="javascript:if ('function' == typeof(_bodyonunload)) { _bodyonunload(event); };"
 onbeforeunload="javascript:if ('function' == typeof(_bodyonbeforeunload)) { _bodyonbeforeunload(event); };"> 
<div id="header">
<div id="TextNav"><!--页面导航 开始-->
<h1>
<a href="#">首页</a>|<a href="#">博客天地</a>|<a href="#">虚拟家园</a>|<a href="#">活动聚会</a>|<a href="#">在线聊天</a>|<a href="#">俱乐部论坛</a>|<a href="#">爱情搜索</a>|<a href="#">爱情顾问</a>|<a href="#">佳偶天成</a>|<a href="#">信息指南</a>|<a href="#">涉外专区</a></h1>
</div><!--页面导航 结束-->
<div id="SosoArea">
<ul>
<li class="lia"><a href="#"><span>〣o.緈諨┌</span>的个人后台</a><a href="#">会员<span>ID:53006694</span></a></li>
<li>个人主页网址：</li>
<li class="p_A"><input name="" type="text"  class="in"/></li>
<li><input name="" type="image" src="../webroot/img/match/ann_03.gif" /></li>
<li class="li">访问人数:<span>42</span>点击数:<span>385</span></li>
</ul>
</div>
<div id="TopNav">
<div id="logo"><a href="#"><?= $html->image('match/logo_03.gif',array("width"=>"225"))?></a></div>
<div id="Banners"><a href="#"><?= $html->image('match/banner.gif',array("width"=>"747"))?></a></div>
</div>
</div>
<div class="c"></div>	
			<?php $session->flash(); ?>

			

	<DIV class="m2 wr1">
    <DIV id="r2_2">
      <DIV id="r3">
        <DIV class="l"><?=$html->image("ico_park.gif",array("align"=>"absmiddle"))?>
		<B class="f14">游戏：争车位</B>
		</DIV>
        <DIV class="r"><A href="javascript:window.history.back();" class="sl">&lt;&lt;返回上一页</A></DIV>
        <DIV class="c"></DIV>
      </DIV>
	  <DIV class="c"></DIV>
	  <DIV class="park_nav" style="margin-top:7px;">
			<DIV class="park_navbg">
				<H4 class="sy"><A href="me" class="sl2">首页</A></H4>	
			</DIV>
			<DIV class="park_navbg">
				<H4 class="cs"><A href="carshop" class="sl2">车市</A></H4>	
			</DIV>
			<DIV class="park_navbg">
				<H4 class="daoju"><A href="#" class="sl2">道具</A></H4>	
			</DIV>
			<DIV class="park_navbg">
				<H4 class="ph"><A href="#" class="sl2">排行</A></H4>
			</DIV>
			<!--DIV class="park_navbg">
				<H4 class="ll" style="margin-left:8px;padding-left:13px;"><A class="sl2" href="#">拉力赛</A></H4>
			</DIV-->
			<DIV class="park_navbg" style="margin-right:0px;">
				<H4 class="help"><A href="help" class="sl2">帮助</A></H4>
			</DIV>
			<DIV class="c"></DIV>
		 </DIV>	
		 <?php echo $content_for_layout; ?>
	</div>
	</div>
	<DIV class="c"></DIV>
	<?php echo $cakeDebug; ?>
</body>
</html>
