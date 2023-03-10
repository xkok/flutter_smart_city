import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/extensions/extensions.dart';
import '../controllers/login_controller.dart';
import '../../../core/widgets/loading_button.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: context.horizontalPaddingNormal,
            child: Column(
              children: [
                SizedBox(
                  width: Get.width,
                  height: 250,
                  child: Image.asset(
                    'assets/illustrations/flow-rafiki.png',
                    fit: BoxFit.cover,
                  ),
                ),
                context.emptySizedHeightBoxLow2x,
                TextFormField(
                  controller: controller.usernameCtrl,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: '用户名',
                  ),
                ),
                context.emptySizedHeightBoxLow2x,
                TextFormField(
                  controller: controller.passwordCtrl,
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: '密码',
                  ),
                ),
                context.emptySizedHeightBoxNormal,
                Obx(
                  () => MyLoadingButton(
                    onTap: controller.login,
                    text: '登录',
                    context: context,
                    isLoading: controller.isLoading,
                  ),
                ),
                context.emptySizedHeightBoxLow3x,
                RichText(
                  text: TextSpan(
                    text: '还没有账号？',
                    style: TextStyle(color: context.grey, fontSize: 16),
                    children: [
                      TextSpan(
                          text: '立即注册',
                          style: TextStyle(
                            color: context.primaryColor,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.toNamed('/signup')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
