import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animation/animation_do.dart';
import 'package:store_app/core/common/widget/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routes/app_routes.dart';
import 'package:store_app/core/styles/fonts/font_weight_helper.dart';
import 'package:store_app/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:store_app/features/auth/presentation/widgets/dark_and_lang_button.dart';
import 'package:store_app/features/auth/presentation/widgets/signup/signUp_button.dart';
import 'package:store_app/features/auth/presentation/widgets/signup/signup_text_form.dart';
import 'package:store_app/features/auth/presentation/widgets/signup/user_avatar_image.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 20.h,
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            //!Dark Mode and Language
            const DarkAndLangButton(),
            SizedBox(
              height: 30.sp,
            ),
            //! Welcome Info
            AuthTitleInfo(
              title: context.translate(LangKeys.signUp),
              description: context.translate(LangKeys.signUpWelcome),
            ),
            SizedBox(
              height: 10.sp,
            ),
            //! User Avatar Image
            const UserAvatarImage(),
            SizedBox(
              height: 20.sp,
            ),
            //! SignUp TextFrom
            const SignUpTextFrom(),
            SizedBox(
              height: 20.sp,
            ),
            //! SignUp Button
            const SignUpButton(),
            SizedBox(
              height: 20.sp,
            ),
            //! Go To Login SCreen
            CustomFadeInDown(
              duration: 400,
              child: TextButton(
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.login);
                },
                child: TextApp(
                  text: context.translate(LangKeys.youHaveAccount),
                  theme: context.textStyle.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeightHelper.bold,
                    color: context.color.bluePinkLight,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
