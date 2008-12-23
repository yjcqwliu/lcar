<?php
App::import('Model','Friends','Userinfo','Cars','Parks','UserCars'); 
class User extends AppModel 
{   
	var $name = 'app_car_user';
	var $primaryKey = 'uid';
	var $uses = array('Friends');
	var $belongsTo = array(
        'userinfo' => array(
            'className'    => 'Userinfo',
			'foreignKey' => 'uid',
        ),
		'publicinfo' => array(
            'className'    => 'Publicinfo',
			'foreignKey' => 'uid',
        ),
		'parks' => array(
			'className'    => 'Parks',
			'foreignKey' => 'uid',
        ),
    ); 
	function find_or_create_by_uid($uid)
	{
		if($tu = $this->find_by_uid($uid))
		{
			if(!isset($tu["publicinfo"]["money"]) || empty($tu["publicinfo"]["money"]))
			{
				$data_publicinfo["money"] = 1000;
				$data_publicinfo["uid"] = $uid;
				$this->publicinfo->save($data_publicinfo);
				$tu["publicinfo"] = $data_publicinfo;
			}
			return $tu;
		}
		else
		{
			$data_user["uid"] = $uid;
			$data_user["sell_price"] = 500;
			$data_user["total_money"] = 1000;
			$data_user["slave_count"] = 0;
			$data_user["last_price"] = 0;
			$data_user["friend_ids"] = $this->get_friend_ids($uid);
			$this->save($data_user); 
			$data_publicinfo["money"] = 1000;
			$data_publicinfo["uid"] = $uid;
			$this->publicinfo->save($data_publicinfo);
			$tu = $this->find_by_uid($uid);
			
			$cars_class = new Cars();
			$car = $cars_class->find("id = 1");
			
			$this->get_car($uid,$car["app_car_cars"],false);
			
			return $tu;
		}
		
	}
	function get_car($uid,$car,$cost = true)
	{
		if($cost)
			$this->cut_money($uid,$car['price']);
		$user_car_data['car_name'] = $car['car_name']; 
		$user_car_data['capacity'] = $car['capacity']; 
		$user_car_data['price'] = $car['price']; 
		$user_car_data['intro'] = $car['intro']; 
		$user_car_data['car_logo'] = $car['car_logo']; 
		$user_car_data['car_logo_flash'] = $car['car_logo_flash']; 
		$user_car_data['car_trademark'] = $car['car_trademark']; 
		$user_car_data['car_trademarkname'] = $car['car_trademarkname']; 
		$user_car_data['car_police'] = $car['car_police']; 
		$user_car_data['price'] = $car['price']; 
		$user_car_data['uid'] = $uid;
		$UserCars_class = new UserCars();
		$UserCars_class->save($user_car_data);
	}
	function find_by_uid($uid)  //根据用户UID返回用户信息
	{
		$tu = $this->find("`User`.`uid` = ".$uid);
		return $tu;
	}
	function get_friend_ids($uid) //返回用户好友列表，私有函数
	{
		$friends_class = new Friends();
		$friends = $friends_class->find('all',array("conditions" => array("uid"=>$uid)));
		$resualt = array();
		foreach($friends as $f)
		{
			array_push($resualt,$f["club_buddys"]["buddyid"]);
		}
		return join($resualt,",");
	}
	function get_friends($user) //返回用户好友集合
	{
		if(!empty($user["User"]["friend_ids"]))
		{
			$friends = $this->find('all',array("conditions"=>"User.uid in (".$user["User"]["friend_ids"].")"));
			return $friends;
		}
		else
		{
			return array();
		}
		
	}
	function beforeSave()
	{
		//nothing
		return true;
	}
	function cut_money($uid)
	{
		
	}
	function add_money($uid)
	{
		
	}

}
?>