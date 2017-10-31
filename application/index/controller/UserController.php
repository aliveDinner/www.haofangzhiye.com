<?php
// +----------------------------------------------------------------------
// | 零云 [ 简单 高效 卓越 ]
// +----------------------------------------------------------------------
// | Copyright (c) 2016 http://www.lingyun.net All rights reserved.
// +----------------------------------------------------------------------
// | Author: Sir Fu
// +----------------------------------------------------------------------
// | 版权申明：零云不是一个自由软件，是零云官方推出的商业源码，严禁在未经许可的情况下
// | 拷贝、复制、传播、使用零云的任意代码，如有违反，请立即删除，否则您将面临承担相应
// | 法律责任的风险。如果需要取得官方授权，请联系官方http://www.lingyun.net
// +----------------------------------------------------------------------
namespace app\home\controller;


use app\common\controller\BaseController;
use app\common\model\HomeUser;
use think\captcha\Captcha;
use app\home\model\User;

/**
 * 用户控制器
 * @author Sir Fu
 */
class UserController extends BaseController
{
    /**
     * 初始化方法
     * @author Sir Fu
     */
    protected function _initialize()
    {
        parent::_initialize();
        if ($this->getRequest()->ip() != '127.0.0.1'){
            config('app_debug',false);
        }
        // 初始化
        $this->init('user');

        $this->setSession('user');
    }

    /**
     * @description 数据
     * @return mixed
     */
    public function indexAction()
    {
        $this->assign('meta_title', "个人信息");
        return view('user/index');
    }

    /**
     * @description back login
     * @author Sir Fu
     */
    public function loginAction()
    {

        if ($this->getRequest()->isAjax() && $this->getRequest()->isPost()) {
            $username = trim($this->getRequest()->request('username'));
            $password = $this->getRequest()->request('password');

//        // 图片验证码校验
//        if (!$this->checkVerify(input('post.verify')) && 'localhost' !== request()->host() && '127.0.0.1' !== request()->host()) {
//            $this->error('验证码输入错误');
//        }

            // 调用当前模型对应的Identity验证器类进行数据验证
            $data = [
                'username' => $username,
                'password' => $password,
            ];

            $validate = User::getValidate();
            $validate->scene('loginAjax');

            if ($validate->check($data)) {

                //注意，在模型数据操作的情况下，验证字段的方式，直接传入对象即可验证
                $identity = new User();
                $identity->username = $username;
                $identity->password = $password;
                $res = $identity->login();
                if ($res instanceof User) {

//                // 验证管理员表里是否有该用户
//                $account_object = new Access();
//                $where['uid']   = $identity->id;
//                $account_info   = $account_object->where($where)->find();
//                if (!$account_info) {
////                    $this->error('该用户没有管理员权限' . $account_object->getError());
//                }

//                // 跳转
//                if (0 < $account_info['uid'] && $account_info['uid'] === $identity->id) {
//                    $this->success('登录成功！', url('Back/index/index'));
//                } else {
//                    $this->logoutAction();
//                }
                    return json(['status' => '1', 'info' => '登录成功', 'url' => url($this->getHomeUrl())]);
                } else {
                    return json(['status' => '0', 'info' => $res]);
                }
            } else {
                return json(['status' => '0', 'info' => $validate->getError()]);
            }
        }

        if ($this->isGuest()) {
            $this->goHome();
        }

        // 临时关闭当前模板的布局功能
        $this->view->engine->layout(false);
        return view('login', ['meta_title' => '会员登录']);
    }

    /**
     * @description Logout action.
     */
    public function logoutAction()
    {
        User::logout();
        $this->success('退出成功！', $this->getLoginUrl(), [], 1);
    }

    /**
     * @description 足迹
     * @return string
     */
    public function logAction()
    {
        $this->assign('meta_title', "日志信息");
        return view('user/log');
    }

    /**
     * @description 新增
     * @return string
     */
    public function resetPasswordAction()
    {
        $this->assign('meta_title', "重置");
        return view('user/reset');
    }

    /**
     * @description 新增
     * @param $id
     * @return string
     */
    public function resetAction($id = 0)
    {
        if (empty($id)) {
            throw new \think\Exception\HttpException(404, '该账号不存在', null, ['code' => '404', 'msg' => '该账号不存在', 'info' => '该账号不存在'], '404');
        }
        $find = false;

        if ($model = User::load()->where(['id' => $id])->find()) {
            $find = true;
        } else if ($model = User::findByUsername($id)) {
            $find = true;
        } else if ($model = User::findByPhone($id)) {
            $find = true;
        } else if ($model = User::findByPasswordResetToken($id)) {
            $find = true;
        }

        if (!$find) {
            throw new \think\Exception\HttpException(404, '该账号不存在', null, ['code' => '404', 'msg' => '该账号不存在', 'info' => '该账号不存在'], '404');
        }

        $request = $this->getRequest();
        if ($request->isPost() || $request->isAjax()) {
            // 调用当前模型对应的Identity验证器类进行数据验证
            $data = [];
            $data['oldPassword'] = $request->post('newPassword');
            $data['password'] = $request->post('password');
            $data['rePassword'] = $request->post('rePassword');
            $validate = User::getValidate();
            $validate->scene('reset');
            if ($validate->check($data)) { //注意，在模型数据操作的情况下，验证字段的方式，直接传入对象即可验证
                $res = User::load()->resetUser($id, $data);
                if ($res) {
                    $this->success('更新成功', url('reset', ['id' => $id]), [], 1);
                } else {
                    $this->error('原密码不正确', url('reset', ['id' => $id]), [], 1);
                }
            } else {
                $this->error($validate->getError(), url('reset', ['id' => $id]), [], 1);
            }
        }

        return view('user/reset', ['meta_title' => '修改密码', 'model' => $model]);
    }


    public function registerAction()
    {
        $identity = new User();
        $request = $this->getRequest();
        $token = $request->request('__token__');
        if ($request->isPost() && $token) {
            // 调用当前模型对应的Identity验证器类进行数据验证
            $data = [];
            $data['username'] = $request->post('username');
            $data['phone'] = $request->post('phone');
            $data['password'] = $request->post('password');
            $data['rePassword'] = $request->post('rePassword');
            $validate = User::getValidate();
            $validate->scene('register');
            if ($validate->check($data)) { //注意，在模型数据操作的情况下，验证字段的方式，直接传入对象即可验证
                $res = $identity->signUp($data);
                if ($res instanceof User) {
                    $this->success('注册成功', 'login', '', 1);
                } else {
                    $this->error($res, 'register', '', 1);
                }
            } else {
                $this->error($validate->getError(), 'register', '', 1);
            }
        }
        return view('user/create', ['meta_title' => '会员注册']);
    }

    /**
     * @description 图片验证码生成，用于登录和注册
     * @param $vid
     * @author Sir Fu
     */
    public function verifyAction($vid = 1)
    {
        $verify = new Captcha();
        $verify->entry($vid);
    }

    /**
     * @description 检测验证码
     * @param  integer $code 验证码ID
     * @param $vid
     * @return boolean 检测结果
     */
    protected function checkVerify($code, $vid = 1)
    {
        $verify = new Captcha();
        return $verify->check($code, $vid);
    }

    /**
     * @description 删除
     * @param $id
     * @return string
     */
    public function deleteAction($id = 0)
    {
        return json(['code' => 1, 'msg' => '删除成功', 'delete_id' => $id]);
    }
}
