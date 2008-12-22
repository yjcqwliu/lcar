<?php
App::import('Model','Friends','Userinfo','Notice'); 
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
        )
    ); 
	function find_or_create_by_uid($uid)
	{
		if($tu = $this->find("`User`.`uid` = ".$uid))
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
			$tu = $this->find("`User`.`uid` = ".$uid);
			return $tu;
		}
		
	}
	function find_by_uid($uid)
	{
		$tu = $this->find("`User`.`uid` = ".$uid);
		return $tu;
	}
	function get_friend_ids($uid)
	{
		$friends_class = new Friends();
		$friends = $friends_class->find('all',array("conditions" => array("uid"=>$uid)));
		$resualt = array();
		foreach($friends as $f)
		{
			#Debugger::dump($f);
			array_push($resualt,$f["club_buddys"]["buddyid"]);
		}
		return join($resualt,",");
	}
	function beforeSave()
	{
		//nothing
		return true;
	}
	function notice($uid)
	{
		$notice_class = new Notice();
		$notice = $notice_class->find('all',array('conditions' => "from_uid = " . $uid . " or to_uid = " . $uid . " or who_uid =" . $uid , 'limit' => 20, 'order' => 'id desc'));
		return $notice;
	}
}
?>