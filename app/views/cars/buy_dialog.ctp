<div  id="flag7" style="display:block;width:445px;margin:0 auto;">
<div   style="height:390px;">
<?php echo $form->create(array('action'=>'buy')); ?>
<input type="hidden" name="carid" value="<?= $car['Cars']['id'] ?>"/>
<TABLE class="cheshi">
		<TBODY><TR>
	<TD width="25&percnt;"><DIV style="display:block;"><DIV class="cs_pic" style="cursor:auto;"><IMG src="<?= $car['Cars']['car_logo']?>" alt="二手奥拓" width="190"></DIV>
			<DIV class="tac" style="margin-top:4px;"><IMG src="<?= $car['Cars']['car_trademark']?>" alt="奥拓" align="absmiddle"><?= $car['Cars']['car_name']?></DIV>
			<DIV class="tac">价格：<?= $car['Cars']['price'] ?>元</DIV>
			</TD>

	</tr>	
	</TBODY></TABLE>
<div style="padding:10px 150px;">
	<div class="rbs1">
		<input name="submit" type="submit" value="立即购买" class="rb1-12" onmouseover="this.className='rb2-12';" onmouseout="this.className='rb1-12';" style="padding:2px 15px;" /></div>
</div>
</form>

</div>
<div style="height:40px;border-top:1px solid #ccc;background:#F2F2F2;">
	<div class="r" style="width:10px;">&nbsp;</div>
	<div class="rbs1 mt5" style="float:right;">
		<input type="button" value="取消" class="rb1-12" onmouseover="this.className='rb2-12';" onmouseout="this.className='rb1-12';"  style="padding:4px 10px;" onclick="new parent.dialog().reset();" /></div>
	
</div>
</div>