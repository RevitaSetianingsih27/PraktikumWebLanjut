<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\UserModel;

class T_register extends BaseController
{
	public function __construct()
	{
		$this->userModel = new UserModel();
	}
	public function index()
	{
		$data = [
			'title' => "Register"
		];
        return view('v_register');
	}

	public function saveRegister()
	{
		$request = service('request');
		$data = [
			'fullname'	=> $request->getVar('fullname'),
			'email'		=> $request->getVar('email'),
			'password'	=> $request->getVar('password')
		];
		$this->userModel->insert($data);
		return redirect()->to('/register');
	}
}
