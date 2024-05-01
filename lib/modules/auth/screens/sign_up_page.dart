import 'package:flutter/material.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/app_constants.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';
import 'package:movea_app/widgets/stless/custom_textfiled.dart';
import 'package:movea_app/widgets/stless/top_bar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            TopBarCard(content: 'Tạo tài khoản mới\nYcủa bạn',height: AppConstant.doubleLineHeight),
            SizedBox(height: 30),
            Container(
              width: size.height / 8,
              height: size.height / 8,
              decoration: BoxDecoration(
                image: DecorationImage(
                  //fit: BoxFit.cover,
                  scale: 0.75,
                  image: AssetImage(AssetPath.iconProfile),
                ),
              ),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                          color: DarkTheme.blueMain,
                          borderRadius: BorderRadius.circular(100)),
                      child: CircleButton(
                        assetPath: AssetPath.iconAdd,
                        bgColor: DarkTheme.blueMain,
                        onTap: () {},
                      ),
                    )),
              ),
            ),
            SizedBox(height: 30),
            CustomTextField(
              height: MediaQuery.of(context).size.height / 14,
              content: 'Họ tên',
            ),
            SizedBox(height: 30),
            CustomTextField(
              height: MediaQuery.of(context).size.height / 14,
              content: 'Email',
            ),
            SizedBox(height: 30),
            CustomTextField(
              height: MediaQuery.of(context).size.height / 14,
              content: 'Mật khẩu',
            ),
            SizedBox(height: 30),
            CustomTextField(
              height: MediaQuery.of(context).size.height / 14,
              content: 'Xác nhận mật khẩu',
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: GradientButton(
                onTap: (){
                  Navigator.pushNamed(context, Routes.favoriteGenrePage);
                },
                height: size.height / 14,
                gradientColor1: GradientPalette.blue1,
                gradientColor2: GradientPalette.blue2,
                child: Text(
                  'Đăng nhập',
                  style: TxtStyle.heading3Light,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
