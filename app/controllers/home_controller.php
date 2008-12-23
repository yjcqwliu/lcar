<?php
class HomeController extends AppController {
	var $uses = array('User','Friends','Userinfo','Cars','UserCars');
	var $components = array('Cookie','RequestHandler');
	var $helpers = array('link','Javascript');
	function beforeFilter()
	{
		$this->login();
	}
	function beforeRender()
	{
		$this->pageTitle = "抢车位";
	}
	function me() {
		
		
		
		$friends = $this->User->get_friends($this->current_user);
		$friends_arr = array();
		 foreach($friends as $f)
		 {
			$t_arr = array(
			"uid"=>$f["User"]["uid"], 
			"real_name"=>$f["userinfo"]["nickname"], 
			"ta"=>$this->get_gender($f),  
			"full"=>"0", 
			"scenemoney"=>"10",
			"scenename"=>"\u5927\u9053",
			"neighbor"=>0,  
			"online"=>0,
			);
			array_push($friends_arr,$t_arr);
		}
		$friends_json= json_encode($friends_arr);
		
		$this->set('friends_json',$friends_json);
		$this->set('v_userdata',$this->get_user_json($this->current_user));
	}
	private function get_user_json($user)
	{
		$v_userdata = array(
			"error"=>"",
			"config"=>array(
				"money_minute"=>"10",  
				"money_max"=>7200
			),
			"parking"=>  array(array(
						"parkid"=>"16842754", 
						"car_uid"=>0,
						"carid"=>0,
						"ctime"=>1227623550,
						"car_real_name"=>"",
						"car_logo20"=>"",
						"car_isfriend"=>0,
						"car_logo_big"=>"http:\/\/pic.kaixin001.com\/pic\/car\/0\/0\/2_0_-16777215.gif",
						"car_logo_small"=>"http:\/\/pic.kaixin001.com\/pic\/car\/0\/0\/1_0_-16777215.gif",
						"car_logo_flash"=>"http:\/\/pic.kaixin001.com\/pic\/car\/0\/0\/1_0_-16777215.swf",
						"car_police"=>null,
						"car_profit"=>7200,
						"car_trademark"=>"",
						"car_trademarkname"=>"",
						"car_price"=>"","car_name"=>""
					),
					array(
						"parkid"=>"33554436",
						"car_uid"=>"8551031",
						"carid"=>"4325377",
						"ctime"=>1229699369,
						"car_real_name"=>"车名",
						"car_logo20"=>"http:\/\/pic.kaixin001.com\/logo\/55\/10\/20_8551031_2.jpg",
						"car_isfriend"=>1,
						"car_logo_big"=>"http:\/\/pic.kaixin001.com\/pic\/car\/0\/0\/2_66_1-13421772.gif",
						"car_logo_small"=>"http:\/\/pic.kaixin001.com\/pic\/car\/0\/0\/1_66_1-13421772.gif",
						"car_logo_flash"=>"http:\/\/pic.kaixin001.com\/pic\/car\/0\/0\/1_66_1-13421772.swf",
						"car_police"=>"0",
						"car_profit"=>6720,
						"car_trademark"=>"http:\/\/img.kaixin001.com.cn\/i2\/park\/halei0.gif",
						"car_trademarkname"=>"\u54c8\u96f7",
						"car_price"=>"300000",
						"car_name"=>"车"
					),
				   array(
					   "parkid"=>"50331652",
					   "car_uid"=>"8551031",
					   "carid"=>"131077",
					   "ctime"=>1229699358,  
					   "car_real_name"=>"车名",  
					   "car_logo20"=>"http:\/\/pic.kaixin001.com\/logo\/55\/10\/20_8551031_2.jpg", 
					   "car_isfriend"=>1,    
					   "car_logo_big"=>"http:\/\/pic.kaixin001.com\/pic\/car\/0\/0\/2_2_2-16776960.gif", 
					   "car_logo_small"=>"http:\/\/pic.kaixin001.com\/pic\/car\/0\/0\/1_2_2-16776960.gif", 
					   "car_logo_flash"=>"http:\/\/pic.kaixin001.com\/pic\/car\/0\/0\/1_2_2-16776960.swf", 
					   "car_police"=>"0", 
					   "car_profit"=>6720,  
					   "car_trademark"=>"http:\/\/img.kaixin001.com.cn\/i2\/park\/logo_alto.gif", 
					   "car_trademarkname"=>"", 
					   "car_price"=>"20000", 
					   "car_name"=>"车"  
					),
					array(
						"parkid"=>"67108866",
						"car_uid"=>"8551031",
						"carid"=>"65538",
						"ctime"=>1229699354,
						"car_real_name"=>"车名",
						"car_logo20"=>"http:\/\/pic.kaixin001.com\/logo\/55\/10\/20_8551031_2.jpg",
						"car_isfriend"=>1,
						"car_logo_big"=>"http:\/\/pic.kaixin001.com\/pic\/car\/0\/0\/2_1_3-0.gif",
						"car_logo_small"=>"http:\/\/pic.kaixin001.com\/pic\/car\/0\/0\/1_1_3-0.gif",
						"car_logo_flash"=>"http:\/\/pic.kaixin001.com\/pic\/car\/0\/0\/1_1_3-0.swf",
						"car_police"=>"0",
						"car_profit"=>6720,
						"car_trademark"=>"http:\/\/img.kaixin001.com.cn\/i2\/park\/logo_alto.gif",
						"car_trademarkname"=>"",
						"car_price"=>"16000",
						"car_name"=>"车"
					)
				),
			);
		$v_userdata["user"] = array(
			"vuid"=>$user["User"]["uid"],   
			"uid"=>$user["User"]["uid"],   
			"neighbor"=>0,
			"isfriend"=>3,
			"first_fee_parking"=>0,
			"first_free_parking"=>0,
			"real_name"=>$user["userinfo"]["nickname"],   
			"ta"=>$this->get_gender($user),  
			"logo50"=>$this->show_userpic($user["userinfo"]["userpic"],1), 
			"logo20"=>$this->show_userpic($user["userinfo"]["userpic"],1), 
			"avenue"=>"的停车场",
			"cash"=>$user["publicinfo"]["money"],   
			"scene"=>"http://img.kaixin001.com.cn/i2/scenes/bb6.jpg",
			"sceneid"=>"6",
			"showmoneyminute"=>0,
			"online2"=>1
			);
		
		
		$user_cars = $this->UserCars->get_user_cars($user["User"]["uid"]);
		$user_cars_arr = array();
		foreach($user_cars as $car)
		{
			 $t_arr = array(
			 "carid"=>$car['UserCars']['id'],
			 "price"=>$car['UserCars']['price'],
			 "neighbor"=>"0",
			 "park_uid"=>$car['UserCars']['id'],
			 "parkid"=>$car['UserCars']['parkid'],
			 "ctime"=>$car['UserCars']['ctime'],
			 "car_name"=>$car['UserCars']['car_name'],
			 "car_logo_big"=>$car['UserCars']['car_logo'],
			 "car_logo_small"=>$car['UserCars']['car_logo'],
			 "car_logo_flash"=>$car['UserCars']['car_logo_flash'],
			 "car_trademark"=>$car['UserCars']['car_trademark'],
			 "car_trademarkname"=>$car['UserCars']['car_trademarkname'],
			 "car_police"=>$car['UserCars']['car_police'],
			 "park_real_name"=>$car['UserCars']['park_real_name'],
			 "park_logo20"=>$car['UserCars']['park_logo20'],
			 "park_profit"=>50,
			 "park_moneyminute"=>$car['UserCars']['park_moneyminute'],
			);
			array_push($user_cars_arr,$t_arr);
		}
		$v_userdata["car"] = $user_cars_arr;
		return json_encode($v_userdata);
	}
	function user($puid)
	{
		Configure::write('debug', 0);
		$this->layout = null;
		if(!empty($puid))
		{
			$user = $this->User->find_by_uid($puid);
			echo($this->get_user_json($user));
		}
		
	}
	function help()
	{
	}
	function carshop()
	{
		$cars = $this->Cars->find('all');
		$this->set('cars',$cars);
	}
	
}
?>