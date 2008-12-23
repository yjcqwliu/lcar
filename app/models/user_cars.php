<?php
class UserCars extends AppModel 
{   
	var $name = 'app_car_usercars';
	function get_user_cars($uid)
	{
		//$usercars_class = new UserCars;
		$cars = $this->find('all',array('conditions'=>' uid = '.$uid));
		return $cars;
	}
}
?>