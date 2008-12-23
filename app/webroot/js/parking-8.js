var g_curuid = 0;
var g_curreal_name = "";
var g_curlogo20 = "";
var g_curonline2 = 1;
var g_curparkid = 0;
var g_neighbor = 0;
var g_direction = "";
var g_direction2 = "";

function showUserCar(v_uid, v_ta)
{
	openWindow('/parking/usercar.php?verify=' + g_verify + '&puid=' + v_uid, 460, 500, v_ta + '的汽车');
}

function parking_call(parkid)
{
	var ac = acc();
	var url = "/parking/call.php";
	var pars = "verify=" + g_verify + "&park_uid=" + g_curuid + "&parkid=" + parkid + "&acc=" + ac;
	var myAjax = new Ajax.Request(url, {method: "post", parameters: pars, onComplete: function (req) { parking_callAjaxShow(req); } });
}

function parking_callAjaxShow(req)
{
	eval("data="+req.responseText);
	var errno = parseInt(data["errno"]);
	if (errno)
	{
		alert(data["error"]);
	}
	else
	{
		var post = parseInt(data["post"]);
		var recall = parseInt(data["recall"]);
		var anonnum = parseInt(data["anonnum"]);
		if (recall)
		{
			openAlertBlue((anonnum>0?"<div style='padding-top:0px;padding-left:5px;'><span class=c6>你正在使用匿名举报卡，还剩 </span><span class=cr>"+(anonnum-1)+"</span><span class=c6> 次匿名举报机会。</span></div>":"")
+ "<div style='margin:10px 10px;'>"
+ "<div class=l style='width:70px;'><div class=l50_s><img src='" + data["logo50"] + "'  /></div></div>"
+ "<div class=l style='padding:15px 15px;width:22em;'><span class=f14>“报告警察叔叔，" + data["car_real_name"] + "好像在违章停车！”</span>"
+ "</div>"
+ "<div class=c></div>"
+ "</div>"
+ "<div style='margin:10px 10px;'>"
+ "<div class=l style='width:70px;'><img src='/i2/park/men_police.gif'  /></div>"
+ "<div class=l style='padding:15px 15px;'><span class=f14>“知道了，不要重复报告嘛！”</span></div>"
+ "<div class=c></div>"
+ "</div>",  "确定", 445, 300, "举报");
		}
		else if (post)
		{
			var calluser = '';
			for (calluid in data["calluids"])
			{
				if (calluser.length)
				{
					calluser += "和";
				}
				calluser += data["calluids"][calluid];
			}
			openAlertBlue((anonnum>0?"<div style='padding-top:0px;padding-left:5px;'><span class=c6>你正在使用匿名举报卡，还剩 </span><span class=cr>"+(anonnum-1)+"</span><span class=c6> 次匿名举报机会。</span></div>":"")
+ "<div style='margin:10px 10px;'>"
+ "<div class=l style='width:70px;'><div class=l50_s><img src='" + data["logo50"] + "'  /></div></div>"
+ "<div class=l style='padding:15px 15px;width:22em;'><span class=f14>“报告警察叔叔，" + data["car_real_name"] + "好像在违章停车！”</span>"
+ "</div>"
+ "<div class=c></div>"
+ "</div>"
+ "<div style='margin:10px 10px;'>"
+ "<div class=l style='width:70px;'><img src='/i2/park/men_police.gif'  /></div>"
+ "<div class=l style='padding:15px 15px;width:22em;'><span class=f14>“" + (calluser=="匿名"?"有人已经匿名":calluser+"已经") + "报告过了，我们的警察马上就到！”</span></div>"
+ "<div class=c></div>"
+ "</div>",  "确定", 445, 300, "举报");

			v_userdata["user"]["cash"] = parseInt(v_userdata["user"]["cash"]) + parseInt(data["cash"]);
			setCash();

			g_direction = "static";
			gotouser(data["park_uid"]);
			g_direction = "";
		}
		else if (data["calluids"].length == 0)
		{
			openAlertBlue((anonnum>0?"<div style='padding-top:0px;padding-left:5px;'><span class=c6>你正在使用匿名举报卡，还剩 </span><span class=cr>"+(anonnum-1)+"</span><span class=c6> 次匿名举报机会。</span></div>":"")
+ "<div style='margin:10px 10px;'>"
+ "<div class=l style='width:70px;'><div class=l50_s><img src='" + data["logo50"] + "'  /></div></div>"
+ "<div class=l style='padding:20px 15px;width:22em;'><span class=f14>“报告警察叔叔，" + data["car_real_name"] + "好像在违章停车！”</span>"
+ "</div>"
+ "<div class=c></div>"
+ "</div>"
+ "<div style='margin:10px 10px;'>"
+ "<div class=l style='width:70px;'><img src='/i2/park/men_police.gif'  /></div>"
+ "<div class=l style='padding:20px 15px;'><span class=f14>“好的，巡警将在1到2个小时内赶到！”</span></div>"
+ "<div class=c></div>"
+ "</div>",  "确定", 445, 300, "举报");
			

		}
		else
		{
			var calluser = '';
			for (calluid in data["calluids"])
			{
				if (calluser.length)
				{
					calluser += "和";
				}
				calluser += data["calluids"][calluid];
			}
			openAlertBlue((anonnum>0?"<div style='padding-top:0px;padding-left:5px;'><span class=c6>你正在使用匿名举报卡，还剩 </span><span class=cr>"+(anonnum-1)+"</span><span class=c6> 次匿名举报机会。</span></div>":"")
+ "<div style='margin:10px 10px;'>"
+ "<div class=l style='width:70px;'><div class=l50_s><img src='" + data["logo50"] + "'  /></div></div>"
+ "<div class=l style='padding:15px 15px;width:22em;'><span class=f14>“报告警察叔叔，" + data["car_real_name"] + "好像在违章停车！”</span>"
+ "</div>"
+ "<div class=c></div>"
+ "</div>"
+ "<div style='margin:10px 10px;'>"
+ "<div class=l style='width:70px;'><img src='/i2/park/men_police.gif'  /></div>"
+ "<div class=l style='padding:15px 15px;width:22em;'><span class=f14>“刚才" + (calluser=="匿名"?"有人匿名":calluser) + "报告过了，我们已经派了警察，正在路上呢”</span></div>"
+ "<div class=c></div>"
+ "</div>",  "确定", 445, 300, "举报");
			
			

		}
	}
}

function parking_post(parkid)
{
	var ac = acc();
	var url = "/parking/post.php";
	var pars = "verify=" + g_verify + "&parkid=" + parkid + "&acc=" + ac;
	var myAjax = new Ajax.Request(url, {method: "post", parameters: pars, onComplete: function (req) { parking_postAjaxShow(req); } });
}

function parking_postAjaxShow(req)
{
	eval("data="+req.responseText);
	var errno = parseInt(data["errno"]);
	if (errno)
	{
		alert(data["error"]);
	}
	else
	{
		for (var i=0; i<v_userdata["parking"].length; i++)
		{
			if (parseInt(v_userdata["parking"][i]["parkid"]) == parseInt(data["parkid"]))
			{
				v_userdata["parking"][i]["car_uid"] = 0;
				v_userdata["parking"][i]["carid"] = 0;
				v_userdata["parking"][i]["ctime"] = data["ctime"];
				v_userdata["parking"][i]["car_profit"] = 0;
				break;
			}
		}
		g_direction = "static";
		gotoMyself();
		g_direction = "";
		openAlertBlue(data["error"], "确定", 445, 128, "贴条");
		v_userdata["user"]["cash"] = parseInt(v_userdata["user"]["cash"]) + parseInt(data["cash"]);
		setCash();
	}
}

function parking_park(parkid)
{
	g_curparkid = parkid;
	var v_park_free = (parseInt(g_curparkid) >> 16) & 0xff;
	if (v_park_free)
	{
		if (parseInt(v_userdata["user"]["first_free_parking"]))
		{
			help_free_parking();
			return;
		}
	}
	else
	{
		if (parseInt(v_userdata["user"]["first_fee_parking"]))
		{
			help_fee_parking();
			return;
		}
	}
	parking_selcar();
}

function parking_selcar()
{
	openWindow('/parking/selcar.php?verify=' + g_verify, 445, 460, '停车');
}

function parking_park_ex(carid)
{
	if (0 == parseInt(g_curparkid))
	{
		return;
	}
	var ac = acc();
	var v_park_free = (parseInt(g_curparkid) >> 16) & 0xff;
	var url = "/parking/park.php";
	var pars = "verify=" + g_verify + "&park_uid=" + g_curuid + "&parkid=" + g_curparkid + "&carid=" + carid + "&neighbor=" + g_neighbor + "&acc=" + ac;
	if (v_park_free)
	{
		pars += "&first_free_parking=" + v_userdata["user"]["first_free_parking"];
		v_userdata["user"]["first_free_parking"] = 0;
	}
	else
	{
		pars += "&first_fee_parking=" + v_userdata["user"]["first_fee_parking"];
		v_userdata["user"]["first_fee_parking"] = 0;
	}
	var myAjax = new Ajax.Request(url, {method: "post", parameters: pars, onComplete: function (req) { parking_parkAjaxShow(req); } });
}

function parking_parkAjaxShow(req)
{
	eval("data="+req.responseText);
	var errno = parseInt(data["errno"]);
	if (errno)
	{
		openAlertBlue("<img src='/i2/gantanhao.gif' align=absmiddle> " + data["error"], "确定", 445, 128, "停车");
	}
	else
	{
		for (var i=0; i<v_userdata["car"].length; i++)
		{
			if (parseInt(v_userdata["car"][i]["carid"]) == parseInt(data["carid"]))
			{
				v_userdata["car"][i]["neighbor"] = data["neighbor"];
				v_userdata["car"][i]["park_uid"] = data["park_uid"];
				v_userdata["car"][i]["parkid"] = data["parkid"];
				v_userdata["car"][i]["ctime"] = data["ctime"];
				v_userdata["car"][i]["park_real_name"] = g_curreal_name;
				v_userdata["car"][i]["park_logo20"] = g_curlogo20;
				v_userdata["car"][i]["park_profit"] = 0;
				v_userdata["car"][i]["park_moneyminute"] = data["moneyminute"];
				break;
			}
		}
		g_direction = "static";
		if (g_neighbor)
		{
			gotoneighbor(data["park_uid"]);
		}
		else
		{
			gotouser(data["park_uid"]);
		}
		g_direction = "";

		if (!parseInt(g_curonline2))
		{
			openAlertBlue("<img src='/i2/gantanhao.gif'  align=absmiddle> 由于该车位主人" + g_curreal_name + "经常不在家，警察会在这一带巡逻", "确定", 445, 128, "警告");
		}

		v_userdata["user"]["cash"] = parseInt(v_userdata["user"]["cash"]) + parseInt(data["cash"]);
		setCash();
		setMycar();
	}
}

function gotoneighbor(v_uid)
{
	g_direction2 = g_direction;
	var url = "/parking/neighbor.php";
	var pars = "verify=" + g_verify + "&puid=" + v_uid;
	var myAjax = new Ajax.Request(url, {method: "post", parameters: pars, onComplete: function (req) { gotoneighborAjaxShow(req); } });
}

function gotoneighborAjaxShow(req)
{
	eval("userdata="+req.responseText);
	var today = new Date();
	userdata["localtime"] = parseInt(today.getTime() / 1000);
	if (!userdata["error"].length)
	{
		g_curuid = parseInt(userdata["user"]["uid"]);
		g_curreal_name = userdata["user"]["real_name"];
		g_curlogo20 = userdata["user"]["logo20"];
		g_curonline2 = userdata["user"]["online2"];
		g_neighbor = 1;
		userdata["curparkid"] = g_curparkid;
		userdata["direction"] = g_direction2;
		document.parking_swf.setData(userdata);

		h("returnmystreet_hide");
		h("touserspan");
		h("splitspan");
		s("returnmystreet_show");
	}
	else
	{
		alert(userdata["error"]);
	}
	g_curparkid = 0;
}

function gotouser(v_uid)
{
	if (parseInt(v_uid) == parseInt(v_userdata["user"]["vuid"]))
	{
		gotoMyself();
		return;
	}
	g_direction2 = g_direction;
	var url = "user/"+ v_uid;
	var pars = null;
	var myAjax = new Ajax.Request(url, {method: "post", parameters: pars, onComplete: function (req) { gotouserAjaxShow(req); } });
}

function gotouserAjaxShow(req)
{
	eval("userdata="+req.responseText);
	var today = new Date();
	userdata["localtime"] = parseInt(today.getTime() / 1000);
	if (!userdata["error"].length)
	{
		g_curuid = parseInt(userdata["user"]["uid"]);
		g_curreal_name = userdata["user"]["real_name"];
		g_curlogo20 = userdata["user"]["logo20"];
		g_curonline2 = userdata["user"]["online2"];
		g_neighbor = 0;
		userdata["curparkid"] = g_curparkid;
		userdata["direction"] = g_direction2;
		document.parking_swf.setData(userdata);

		h("returnmystreet_hide");
		$("touserspan").innerHTML = '<a href="javascript:showUserCar(\'' + g_curuid + '\', \'' + userdata["user"]["ta"] + '\');" class="sl2">' + g_curreal_name + '的汽车</a> <a href="#"><img src="../app/webroot/img/home.gif" alt="' + g_curreal_name + '的开心首页"></a>';
		$("touserspan").style.display = "inline";
		$("splitspan").style.display = "inline";
		s("returnmystreet_show");
	}
	else
	{
		alert(userdata["error"]);
	}
	g_curparkid = 0;

	fs2_data = [];
	fs2_superView();
}

function gotoMyself()
{
	if (!v_userdata["error"].length)
	{
		g_curuid = 0;
		g_curreal_name = "";
		g_curlogo20 = "";
		g_curonline2 = 1;
		g_neighbor = 0;
		v_userdata["curparkid"] = 0;
		v_userdata["direction"] = g_direction;
		document.parking_swf.setData(v_userdata);

		h("returnmystreet_show");
		s("returnmystreet_hide");
	}
	else
	{
		alert(userdata["error"]);
	}
	g_curparkid = 0;
}

function gotoPrev()
{
	var len = v_frienddata.length;
	if (!len)
	{
		return;
	}
	var i;
	for (i=0; i<len; i++)
	{
		var fuid = parseInt(v_frienddata[i]["uid"]);
		if (fuid == g_curuid)
		{
			break;
		}
	}
	i = i - 1 + len;
	i = i % len;
	g_direction = "left";
	if (parseInt(v_frienddata[i]["neighbor"]))
	{
		gotoneighbor(v_frienddata[i]["uid"]);
	}
	else
	{
		gotouser(v_frienddata[i]["uid"]);
	}
	g_direction = "";
}

function gotoNext()
{
	var len = v_frienddata.length;
	if (!len)
	{
		return;
	}
	var i;
	for (i=0; i<len; i++)
	{
		var fuid = parseInt(v_frienddata[i]["uid"]);
		if (fuid == g_curuid)
		{
			break;
		}
	}
	i = i + 1;
	i = i % len;
	g_direction = "right";
	if (parseInt(v_frienddata[i]["neighbor"]))
	{
		gotoneighbor(v_frienddata[i]["uid"]);
	}
	else
	{
		gotouser(v_frienddata[i]["uid"]);
	}
	g_direction = "";
}

function exchangeCar(v_carid)
{
	window.location = '/~parking/market.php';
}

function giveFriend(v_carid)
{
	openWindow('/parking/givefriend.php?verify=' + g_verify + '&carid=' + v_carid, 445, 460, '送车给好友');
}

function setCash()
{
	if (!v_userdata["error"].length)
	{
		$("mycash").innerHTML = v_userdata["user"]["cash"] + "元";
	}
}

function setMycar()
{
	if (!v_userdata["error"].length)
	{
		v_mycar = "";
		for (var i=0; i<v_userdata["car"].length; i++)
		{
			v_park_uid = parseInt(v_userdata["car"][i]["park_uid"]);
			v_parkid = parseInt(v_userdata["car"][i]["parkid"]);
			v_neighbor = parseInt(v_userdata["car"][i]["neighbor"]);
			v_mycar += '<div class="mycar">';
			if (v_park_uid && v_parkid)
			{
				if (v_neighbor)
				{
					v_mycar += '<div class="w285 l"  style="margin-top:-10px;"><a href="#scene" onclick="javascript:gotoneighbor(' + v_park_uid + ');"><img src="' + v_userdata["car"][i]["car_logo_big"] + '" alt="' + v_userdata["car"][i]["car_name"] + ' 价格：' + v_userdata["car"][i]["price"] + '元&#10;点击这里，到' + v_userdata["car"][i]["park_real_name"] +'的车位" /></a></div>';
				}
				else
				{
					v_mycar += '<div class="w285 l"  style="margin-top:-10px;"><a href="#scene" onclick="javascript:gotouser(' + v_park_uid + ');"><img src="' + v_userdata["car"][i]["car_logo_big"] + '" alt="' + v_userdata["car"][i]["car_name"] + ' 价格：' + v_userdata["car"][i]["price"] + '元&#10;点击这里，到' + v_userdata["car"][i]["park_real_name"] +'的车位" /></a></div>';
				}
			}
			else
			{
				v_mycar += '<div class="w285 l"  style="margin-top:-10px;"><img src="' + v_userdata["car"][i]["car_logo_big"] + '" alt="' + v_userdata["car"][i]["car_name"] + ' 价格：' + v_userdata["car"][i]["price"] + '元" /></div>';
			}
			v_mycar += '<div class="mc_inf">';
			v_mycar += '<div class="l"><img src="' + v_userdata["car"][i]["car_trademark"] + '" alt="' + v_userdata["car"][i]["car_trademarkname"] + '"/></div>';
			v_mycar += '<p>' + v_userdata["car"][i]["car_name"] + '<br/>';
			v_mycar += '<span class="c9">';
			if (v_park_uid && v_parkid)
			{
				if (v_neighbor)
				{
					v_mycar += '目前停在<a href="#scene" onclick="javascript:gotoneighbor(' + v_park_uid + ');" class="c9">' + v_userdata["car"][i]["park_real_name"] + '的';
				}
				else
				{
					v_mycar += '目前停在<a href="#scene" onclick="javascript:gotouser(' + v_park_uid + ');" class="c9">' + v_userdata["car"][i]["park_real_name"] + '的';
				}
				var v_park_free = (v_parkid >> 16) & 0xff;
				v_mycar += (v_park_free ? '免费' : '私家') + '车位</a>';
				var v_car_police = parseInt(v_userdata["car"][i]["car_police"]);
				if (!v_park_free && !v_car_police)
				{
					v_mycar += '<br>预计收入：' + v_userdata["car"][i]["park_profit"] + '元';
				}
			}
			else
			{
				v_mycar += '正在找车位...';
			}
			v_mycar += '</span>';
			v_mycar += '</p>';
			v_mycar += '<div class="c"></div>';
			v_mycar += '</div>';
			v_mycar += '<div class="mc_p">';
			//v_mycar += '<p><a href="javascript:exchangeCar(' + v_userdata["car"][i]["carid"] + ');" class="sl2">换购新车</a></p>';
			//v_mycar += '<p><a href="javascript:giveFriend(' + v_userdata["car"][i]["carid"] + ');" class="sl2">送给好友</a></p>';
			v_mycar += '</div>';
			v_mycar += '<div class="c"></div>';
			v_mycar += '</div>';
		}
		$("mycar").innerHTML = v_mycar;
	}
}

function help_step1()
{
	openAlertBlue("<div style='margin:15px 40px;'>"
+ "<div class=l><img src='/i2/park/women_police.gif'  /></div>"
+ "<div class=l style='padding:40px 30px;'><strong class=f14>欢迎加入争车位游戏！</strong></div>"
+ "<div class=c></div>"
+ "</div>"

+ "<div style='margin:30px 20px;text-indent:2em;width:27em;' class=f14>现在，你只有一辆价值1万6千元的二手奥拓车。</div>"

+ "<div style='margin:30px 20px;text-indent:2em;width:25em;' class=f14>把你的车偷偷地停在好友的私家车位里，就可以每分"
+ "钟赚10元。但不要太贪婪喔！如果被主人发现，收入会被他没收的。"
+ "</div>"

+ "<div style='margin:30px 20px;text-indent:2em;width:25em;' class=f14>多占别人私家车位多赚钱，祝你早日换上好车！"

+ "</div>", "下一步", 445, 445, "游戏向导", "parent.help_step2();");
}

function help_step2()
{
	openAlertBlue("<div style='margin:15px 40px;'>"

+ "<div class=tac><img src='/i2/park/car_aotuo.gif'  /></div></div>"
+ "<div style='margin:30px 20px;text-indent:2em;width:25em;' class=f14>"
+ "你的二手奥拓车目前没有停在车位上，需每分钟1元钱交纳养路费。快去找车位吧！</div>"
+ "<div style='margin:30px 20px 5px 0px;text-indent:2em;width:27em;' class=f14>"
+ "游戏技巧：</div>"
+ "<div style='margin:3px 20px;text-indent:2em;' class=f14>1. 尽量选择主人不常在线的车位，以免被对方贴条</div>"
+ "<div style='margin:3px 20px;text-indent:2em;' class=f14>2. 不要停在免费车位中，停在那种车位不赚钱！</div>"
+ "<div style='margin:3px 20px;text-indent:2em;' class=f14>3. 你的车位不能停你自己的车。</div>"
+ "<div class=mt10>&nbsp;</div>"


+ "", "下一步", 445, 445, "游戏向导", "parent.help_step3();");
}

function help_step3()
{
	openAlertBlue("<div style='margin:15px 40px;'>"
+ "<div class=l><img src='/i2/park/women_police.gif'  /></div>"
+ "<div class=l style='padding:40px 30px;'><strong class=f14>好友越多越好玩！</strong></div>"
+ "<div class=c></div>"
+ "</div>"

+ "<div style='margin:30px 20px;text-indent:2em;width:27em;' class=f14>如果你的好友都没有加入本游戏，你的车将无处可停！不过幸运的是，系统会随机分配两个邻居的车位让你先解决燃眉之急。"
+ "</div>"

+ "<div style='margin:30px 20px;text-indent:2em;width:27em;' class=f14>快快邀请你的开心好友都加入这个游戏吧！"
+ "</div>", "开始游戏", 445, 445, "游戏向导");
}

function help_fee_parking()
{
	openAlertBlue("<div style='margin:15px 15px;' class=f14>"
+ "<div class=l><img src='/i2/park/women_police_head.gif'  /></div>"
+ "<div class=flw20>&nbsp;</div>"
+ "<div class=l style=''>"
+ "<div style='width:20em;text-indent:2em;line-height:2em;'><strong class=f14>停车秘籍：</strong></div>"

+ "<div style='width:20em;text-indent:2em;line-height:2em;'>1) 尽量选择主人不经常在线的车位，这样被贴条的风险就低。</div>"
+ "<div style='width:20em;text-indent:2em;line-height:2em;'>2) 停满12小时以后，收入不再增加；一定在12小时后找个新车位。</div>"

+ "<div style='width:20em;text-indent:2em;line-height:2em;margin-top:30px;'>至少停满15分钟后才能换车位。</div>"
+ "</div><div class=c></div></div>"
+ "<div class=mt30>&nbsp;</div>"
+ "", "确定", 445, 445, "游戏向导", "parent.parking_selcar();");
}

function help_free_parking()
{
	openAlertBlue("<div style='margin:15px 15px;' class=f14>"
+ "<div class=l><img src='/i2/park/women_police_head.gif'  /></div>"
+ "<div class=l style=''>"
+ "<div style='width:20em;text-indent:2em;line-height:2em;'>停在免费车位是不赚钱的喔！</div>"
+ "<div class=mt15>&nbsp;</div>"
+ "<div style='width:20em;text-indent:2em;line-height:2em;'>停在免费车位不会被罚款，"
+ "但在免费车位停满12小时会被自动挪开，所以你一定要赶在12小时之前来换个车位。</div>"
+ "<div class=mt15>&nbsp;</div>"
+ "<div style='width:20em;text-indent:2em;line-height:2em;'>你的车至少停满15分钟后才能换车位。你确定要把车停在这个免费车位吗？</div>"
+ "<div style='margin-top:30px;margin-left:220px;'><a href='javascript:new parent.dialog().reset();' class=sl>我再想想</a></div>"
+ "</div><div class=c></div></div>"

+ "", "就停这里", 445, 445, "游戏向导", "parent.parking_selcar();");
}

function refresh(url)
{
	if(typeof(url) == "undefined")
	{
		url = window.location.href;
		while(url.substr(url.length-1 , 1) == "#")
		{
			url = url.substr(0 , url.length-1);
		}
		
		var lastpos = url.lastIndexOf("&_lgmode=pri");
		if(url.substr(lastpos , 12) == "&_lgmode=pri")
		{
			window.location.href = url;
		}
		else
		{
			window.location.href= url+'&_lgmode=pri';
		}
		
	}
	else
	{
		window.location.href = url;
	}
}