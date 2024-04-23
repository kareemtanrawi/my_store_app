import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animation/animation_do.dart';
import 'package:store_app/core/common/widget/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/styles/fonts/font_weight_helper.dart';
import 'package:store_app/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:store_app/features/auth/presentation/widgets/dark_and_lang_button.dart';
import 'package:store_app/features/auth/presentation/widgets/login/login_button.dart';
import 'package:store_app/features/auth/presentation/widgets/login/login_text_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 20.h,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //!Dark Mode and Language
            const DarkAndLangButton(),
            SizedBox(
              height: 50.sp,
            ),
            //! Welcome Info
            AuthTitleInfo(
              title: context.translate(LangKeys.login),
              description: context.translate(LangKeys.welcome),
            ),
            SizedBox(
              height: 30.sp,
            ),
            //! Login TextFrom
            const LoginTextField(),
            SizedBox(
              height: 30.sp,
            ),
            //! Login Button
            const LoginButton(),
            SizedBox(
              height: 30.sp,
            ),
            //! Go To Sign Up SCreen
            CustomFadeInDown(
              duration: 400,
              child: TextApp(
                text: context.translate(LangKeys.createAccount),
                theme: context.textStyle.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeightHelper.bold,
                  color: context.color.bluePinkLight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
