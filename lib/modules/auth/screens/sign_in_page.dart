import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/widgets/stless/bottom_sentence.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';
import 'package:movea_app/widgets/stless/custom_textfiled.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          SizedBox(height: 30),
          Container(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              AssetPath.iconLogo,
              scale: 1.3,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            alignment: Alignment.centerLeft,
            child:
                Text('Chào mừng trở lại!', style: TxtStyle.heading2),
          ),
          SizedBox(height: 30),
          Container(
            child: Column(
              children: [
                CustomTextField(
                  height: MediaQuery.of(context).size.height / 14,
                  content: 'Email',
                  hintText: 'Nhập email',
                ),
                SizedBox(height: 10),
                CustomTextField(
                  height: MediaQuery.of(context).size.height / 14,
                  content: 'Mật khẩu',
                  hintText: 'Mật khẩu',
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 10, right: 30),
            child: Text(
              'Quên mật khẩu?',
              style: TxtStyle.heading4Light,
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ClassicButton(
              height: size.height / 14,
              color: DarkTheme.blueMain,
              child: Text(
                'Đăng nhập',
                style: TxtStyle.heading3Medium,
              ),
              onTap: () {
                Navigator.pushNamed(context, Routes.rootPage);
              },
            ),
          ),
          SizedBox(height: 20),
          BottomSentence(
            content1: 'Tạo tài khoản mới? ',
            content2: 'Đăng ký',
            fnc: () {
              Navigator.pushNamed(context, Routes.signUpPage);
            },
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  AssetPath.btnGooglex2,
                  scale: 2,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                child: Image.asset(
                  AssetPath.btnFacebookx2,
                  scale: 2,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
