<TABLE class="cheshi">
		<TBODY><TR>
		<? foreach($cars as $car) 
		{
		?>
			<TD width="25&percnt;"><DIV style="display:block;"><DIV class="cs_pic" style="cursor:auto;"><IMG src="<?= $car['Cars']['car_logo']?>" alt="二手奥拓" width="190"></DIV>
			<DIV class="tac" style="margin-top:4px;"><IMG src="<?= $car['Cars']['car_trademark']?>" alt="奥拓" align="absmiddle"><?= $car['Cars']['car_name']?></DIV>
			<DIV class="tac">价格：<?= $car['Cars']['price'] ?>元</DIV>
			<DIV class="tac"><A href="javascript:purchase(<?= $car['Cars']['id'] ?>);" class="sl">购买</A> &nbsp; <A href="javascript:updatecar(<?= $car['Cars']['id'] ?>);" class="sl">以旧换新</A></DIV></DIV></TD>
		<?
		}
		?>	
	</tr>	
	</TBODY></TABLE>
<br>
<DIV class="fy_p"><DIV class="tac"><A class="fy2" onfocus="this.blur();">1</A><A href="http://www.kaixin001.com/~parking/market.php?start=8" class="fy" onfocus="this.blur();">2</A><A href="http://www.kaixin001.com/~parking/market.php?start=16" class="fy" onfocus="this.blur();">3</A><A href="http://www.kaixin001.com/~parking/market.php?start=24" class="fy" onfocus="this.blur();">4</A><A href="http://www.kaixin001.com/~parking/market.php?start=32" class="fy" onfocus="this.blur();">5</A>　　<A href="http://www.kaixin001.com/~parking/market.php?start=8" class="fy" onfocus="this.blur();">下一页　&raquo;</A> <A href="http://www.kaixin001.com/~parking/market.php?start=88" class="fy" style="padding:5px 10px 3px 10px;" onfocus="this.blur();">末页</A></DIV></DIV>

<SCRIPT language="javascript">

function purchase(carid)
{
	openWindow('../cars/buy_dialog/' + carid, 445, 460, '购买汽车');
}

function updatecar(carid)
{
	openWindow('/parking/updatecar.php?verify=3639191_1040_3639191_1229994951_4a62b6991b936f4a278353521b3e46b3&carid=' + carid, 445, 460, '以旧换新');
}

function purchase_vip(carid, v_name)
{
	openWindow('/parking/purchase.php?verify=3639191_1040_3639191_1229994951_4a62b6991b936f4a278353521b3e46b3&vip=1&carid=' + carid, 445, 460, v_name);
}

function updatecar_vip(carid, v_name)
{
	openWindow('/parking/updatecar.php?verify=3639191_1040_3639191_1229994951_4a62b6991b936f4a278353521b3e46b3&vip=1&carid=' + carid, 445, 460, v_name);
}

</SCRIPT>