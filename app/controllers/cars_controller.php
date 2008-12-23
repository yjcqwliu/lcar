<?php
class CarsController extends AppController {
	var $uses = array('User','Friends','Userinfo','Cars','UserCars');
	var $components = array('Cookie','RequestHandler');
	var $helpers = array('link','Javascript');
	var $layout = "dialog";
	function beforeFilter()
	{
		$this->login();
	}
	function beforeRender()
	{
		$this->pageTitle = "抢车位";
	}
	function buy_dialog($carid)
	{
		if(!empty($carid))
		{
			$car = $this->Cars->find(" id = ".$carid);
			$this->set('car',$car);
		}
		else
		{
			$this->confirm("错误");
		}
	}
	function confirm($msg)
	{
		$this->set('notice',$msg);
		$this->render('alert');
	}
	function confirm_refresh($msg)
	{
		$this->set('notice',$msg);
		$this->render('alert_refresh');
	}
	function alert()
	{
	}
	function alert_refresh()
	{
	}
	function buy()
	{
		if(isset($_POST["carid"]))
			{
				$carid=$_POST["carid"];
				$car = $this->Cars->find(" id = ".$carid);
				if($this->current_user['publicinfo']['money'] >= $car['Cars']['price'])
				{
					$this->User->get_car($this->current_user["User"]["uid"],$car["Cars"],true);
					$this->confirm_refresh("成功的购买了一辆".$car['Cars']['car_name']);
				}
				else
				{
					$this->confirm("你只有".$this->current_user['publicinfo']['money']."，不够哦，快点赚吧");
				}
			}
			else
			{
				$this->confirm("请选择你要买的车");
			}
	}
}
?>