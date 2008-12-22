<?php
class HomeController extends AppController {
	var $uses = array('User','Friends','Userinfo');
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
		 $this->set('user',$this->current_user);
	}
	
}
?>