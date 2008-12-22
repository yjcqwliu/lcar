<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<?php echo $html->charset(); ?>
	<title>
		<?php echo $title_for_layout; ?>
	</title>
	<SCRIPT language="javascript">AC_FL_RunContent = 0;</SCRIPT>
	<?php
		echo $html->css(array('global','header','s'));
	?>
</head>
<body>
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

			<?php echo $content_for_layout; ?>

	<div class="c"></div>	
	<?php echo $cakeDebug; ?>
</body>
</html>
