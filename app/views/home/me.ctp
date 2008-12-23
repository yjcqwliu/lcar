	  <div class="park_left"> 
		  
		 <a name=scene></a>
		 <div class="park_farea" style="padding-top:20px;">
           <script language=javascript> 
 
var v_userdata =<?= $v_userdata ?>;

var v_frienddata =<?= $friends_json ?>;
var today = new Date();
v_userdata["localtime"] = parseInt(today.getTime() / 1000);
 
//document.writeln('<div id="flash_div" style="left:0;top:0;">flash</div>');
//var oswf = new SWFObject("/i2/parking.1.3.swf", "parking_swf", "605", "210", "8", "#ffffff", true);
//oswf.addParam("allowscriptaccess", "always");
//oswf.addParam("wmode", "opaque");
//oswf.addParam("menu", "false");
//oswf.addVariable("autoplay","0");
//oswf.write("flash_div");
 
function debug(str)
{
	alert(str);
}
         </script>
           <script language="javascript"> 
	if (AC_FL_RunContent == 0) {
		alert("此页需要 AC_RunActiveContent.js");
	} else {
		AC_FL_RunContent(
			'codebase', 'http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0',
			'width', '605',
			'height', '210',
			'src', '../app/webroot/img/parking.1.3',
			'quality', 'high',
			'pluginspage', 'http://www.macromedia.com/go/getflashplayer',
			'align', 'middle',
			'play', 'true',
			'loop', 'true',
			'scale', 'showall',
			'wmode', 'window',
			'devicefont', 'false',
			'id', 'parking_swf',
			'bgcolor', '#ffffff',
			'name', 'parking_swf',
			'menu', 'true',
			'allowFullScreen', 'false',
			'allowScriptAccess','sameDomain',
			'wmode', 'transparent',
			'movie', '../app/webroot/img/parking.1.3',
			'salign', ''
			); //end AC code
	}
         </script>
           <noscript>
           <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="605" height="210" id="parking_swf" align="middle">
             <param name="allowScriptAccess" value="always" />
             <param name="allowFullScreen" value="false" />
             <param name="movie" value="../app/webroot/img/parking.1.3.swf" />
             <param name="quality" value="high" />
             <param name="bgcolor" value="#ffffff" />
             <param name="wmode" value="transparent" />
             <embed src="../app/webroot/img/parking.1.3.swf" quality="high" bgcolor="#ffffff" width="605" height="210" name="parking_swf" align="middle" allowscriptaccess="sameDomain" allowfullscreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />         
           </object>
           </noscript>
         </div>
		 <div class="mt10"> 
			<div class="w100 l">&nbsp;<a href="javascript:gotoPrev();"><img src="../app/webroot/img/back.gif" alt="去左邻的停车位" /></a></div> 
			<div id=returnmystreet_show class="l tac" style="width:400px; padding-top:5px;display:none;"> 
				<span id=touserspan></span> <span id=splitspan  >┊</span> <a href="javascript:gotoMyself();" class="sl2">返回我的停车位</a> 
			</div> 
			<div id=returnmystreet_hide class="l tac" style="width:400px; padding-top:5px;"> 
			</div> 
			<div class="w100 l tar"><a href="javascript:gotoNext();"><img src="../app/webroot/img/next.gif" alt="去右舍的停车位" /></a></div> 
			<div class="c" style="margin-top:0px;"></div> 
			<!--<div class="tac f12" style="font-weight:normal;display:block;"><a href="javascript:notice();" style="color:#D01E3B;" class="sl2">新BMW 320i隆重上市</a></div>--> 
		 
		 </div> 
		 
		 <h3 class="wdqc" style="margin-top:5px;">我的汽车</h3> 
		 <div id=mycar></div> 
		 <script language=javascript> 
		 setMycar();
		 </script> 
		 <a name=record></a> 
		 <div class="bar_menu mt30" style="padding-top:10px;"> 
		 	<div class="flw5" >&nbsp;</div> 
			<script language=javascript> 
			var v_flag = "2";
			if (v_flag == "0")
			{
				document.writeln('<div class="bar_on l f13"><div style="padding-top:2px;" class="tac">我的贴条记录</div></div>');
			}
			else

			{
				document.writeln('<div class="bar_off l sl f13"><div style="padding-top:2px;" class="tac" onclick="javascript:window.location=\'/~parking/index.php#record\';">我的贴条记录</div></div>');
			}
			</script> 
			<div class="flw5" >&nbsp;</div> 
			<script language=javascript> 
			if (v_flag == "2")
			{
				document.writeln('<div class="bar_on l f13"><div style="padding-top:2px;" class="tac">我的车位近况</div></div>');
			}
			else
			{
				document.writeln('<div class="bar_off l sl f13"><div style="padding-top:2px;" class="tac" onclick="javascript:window.location=\'/~parking/index.php?flag=2#record\';">我的车位近况</div></div>');
			}
			</script> 
			<div class="flw5" >&nbsp;</div> 
			<script language=javascript> 
			if (v_flag == "-1")
			{
				document.writeln('<div class="bar_on l f13"><div style="padding-top:2px;" class="tac">路况大厅</div></div>');
			}
			else
			{
				document.writeln('<div class="bar_off l sl f13"><div style="padding-top:2px;" class="tac" onclick="javascript:window.location=\'/~parking/index.php?flag=-1#record\';">路况大厅</div></div>');
			}
			</script> 
			<div class="c"></div> 
		</div> 
	<div style="height:10px;">&nbsp;</div> 
 
	  </div> 
	  
	  <div class="park_right"> 
	  	<div> 
			<div class="l"><div class="l50_s" style="padding-left:0;*padding-left:2px;"> 
			<a href="/home/?uid=3639191"><script language=javascript> 
if (!v_userdata["error"].length)
{
	v_logo = '<img src="' + v_userdata["user"]["logo50"] + '">';
	document.writeln(v_logo);
}
			</script></a></div></div> 
			<div class="l"> 
				<span class="c9">我的现金：</span> 
				<div id=mycash class="wdxj"></div> 
<script language=javascript> 
setCash();
</script> 
			</div> 
			<div class="c"></div> 
		</div> 
		
		<h3 class="qhytcw">去好友的停车位</h3> 
		<div class="qhytcw_area"> 
				<div class="l mt10" style="margin-left:20px !important;margin-left:10px;"> 
					<div class="it_s" style="width:145px;"> 
						<div class="it1"> 
						
							<div id="superinput" style="cursor:text;height:20px;float:left; width:140px;" onclick="fs2_superOnclick()"> 
							&nbsp;
							</div> 
							
							<div class="c"></div> 
						
						</div> 
					</div> 
				</div> 
				
				<div class="l" style="padding:3px 2px 0px 0px; position:relative;margin:13px 2px 0 0;"> 
					<div id="xx_sh" onclick="fs2_viewAllfriend();"><img src="../app/webroot/img/xx_xx1.gif" class="cp" onmouseover="this.src='../app/webroot/img/xx_xx2.gif';" onmouseout="this.src='../app/webroot/img/xx_xx1.gif';" alt="选择好友" /></div> 
					<div class="fsg_nr" style="width:310px;" id="fsg_nr"> 
					<div class="sgt_on" style="width:300px;">请选择好友</div> 
					<div id="allfriend"  style="width:300px;height:100px; overflow:scroll; overflow-x:hidden;"></div> 
					<div class="tac p5"><div class="gbs1"><input type="button" id="btn_qd" value="确定" title="确定" class="gb1-12" onmouseover="this.className='gb2-12';" onmouseout="this.className='gb1-12';" onclick="fs2_selectFriend();" /></div><div class="c"></div></div> 
					</div> 
				</div> 
 
				<div class="c"></div> 
			<div class="hytc_area"> 
<script language=javascript> 
var len = v_frienddata.length;
v_fhtml = "";
for (var i=0; i<len; i++) 
{ 
	v_fhtml += '<ul class="hytc">'; 
	if (parseInt(v_frienddata[i]["neighbor"])) 
	{ 
		v_fhtml += '<li class="w60"><a href="javascript:gotoneighbor(' + v_frienddata[i]["uid"] + ');" class="sl" title="' + v_frienddata[i]["real_name"] + '">' + v_frienddata[i]["real_name"] + '</a></li>';
		v_fhtml += '<li class="w75">(' + v_frienddata[i]["ta"] + '是邻居)</li>';
	}
	else
	{
		v_fhtml += '<li style="width:55px;"><a href="javascript:gotouser(' + v_frienddata[i]["uid"] + ');" class="sl" title="' + v_frienddata[i]["real_name"] + '">' + v_frienddata[i]["real_name"] + '</a></li>';
		v_fhtml += '<li style="width:60px;text-align:right;">';
		if (parseInt(v_frienddata[i]["scenemoney"]) > 10)
		{
			v_fhtml += '<img src="../app/webroot/img/scene/' + v_frienddata[i]["scenemoney"] + '.gif" title="' + v_frienddata[i]["scenename"] + '场景，停车每分钟' + v_frienddata[i]["scenemoney"] + '元"> ';
		}
		v_fhtml += '<A HREF="javascript:showUserCar(' + v_frienddata[i]["uid"] + ', \'' + v_frienddata[i]["ta"] + '\');"><img src="../app/webroot/img/car.gif" title="' + v_frienddata[i]["ta"] + '的汽车" align="absmiddle" /></A> <A HREF="/home/?uid=' + v_frienddata[i]["uid"] + '"><img src="../app/webroot/img/home.gif" title="' + v_frienddata[i]["ta"] + '的开心网首页" align="absmiddle" /></A></li>';
	}
	v_fhtml += '<li style="width:20px;"> '+(v_frienddata[i]["online"]=='1'?'<img src="http://img.kaixin001.com.cn/i/u_zx1.gif" alt="在线" align="absmiddle"/>' :'&nbsp;')+ '</li>';
	if (parseInt(v_frienddata[i]["full"]) == 1)
	{
		v_fhtml += '<li style="float:right;"><img src="../app/webroot/img/man.gif" alt="满" align="absmiddle" /> </li>';
	}
	else if (parseInt(v_frienddata[i]["full"]) == 2)
	{
		v_fhtml += '<li style="float:right;"><img src="../app/webroot/img/half_full.gif" alt="私家车位已满" align="absmiddle" /> </li>';
	}
	else
	{
		v_fhtml += '<li> </li>';
	}
	v_fhtml += '</ul>';
}
document.writeln(v_fhtml);
</script> 
			</div> 
		</div> 
		
       </div> 
       <div class="c"></div> 
       <div class="h100"></div> 
	   <div class="h100"></div> 
 
 
<style> 
   .ts3{height:25px; background:#355582; border-bottom:1px solid #565656; font-weight:bold;}
</style> 
 
 
 
<script language=javascript> 
 
var fs2_pars = "f1";
var g_verify = "3639191_1040_3639191_1229994989_c961d98b059be344e6dc150e3c2a37bb";
var g_first = parseInt("0");
var g_touid = parseInt("0");
var g_checkswf = 0;
		 	
 
 
function checkSwf()
{
	if ("function" == typeof(document.parking_swf.setData))
	{
		clearInterval(g_checkswf);
		if (g_touid)
		{
			gotouser(g_touid);
		}
		else
		{
			gotoMyself();
		}
	}
}
 
 
var  gf773  =  "07ccb047a60c";
var  acc3 = "cbaktr0f1";
function  acc()
{
	var acc = gf773.substr(3,3) + d0bd2.substr(5,5) + 'abc';
	return acc;
}
 
var  d0bd2  =  "79afd54ce68b";
 
 
function _bodyonload()
{
	if (g_first)
	{
		help_step1();
	}
 
	g_checkswf = setInterval(checkSwf, 1000);
	checkSwf();
}
 
function fs2_onrefresh(r)
{
	gotouser(r.uid);
}
 
function notice()
{
	openAlertBlue("<div style='margin:15px 10px;'>"
+ "<div class=l style='width:70px;padding-top:5px;padding-right:10px;'><a href='/~parking/market.php' target=_top><img src='../app/webroot/img/ad_2.gif'  title='新BMW 320i' style='cursor:pointer;' width='95px' height='57px'/></a></div>"
+ "<div class='l' style='padding:5px 15px 0 30px;width:20em;'><div class='f14 mb10' style='text-indent:2em;line-height:25px;'>新BMW 320i上市，拉力赛车速130km/h；广告期间购买即送大剧院场景卡。（每人限送一张）</div>"
+ "<div class=f14 style='text-indent:2em;padding-top:10px;'><a href='/~parking/market.php' class='sl' target=_top>去车市看看</a></div>"
+ "</div>"
+ "<div class=c></div>"
 
+ "</div>",  "关闭", 445, 250, "新车上市");
}
</script> 
