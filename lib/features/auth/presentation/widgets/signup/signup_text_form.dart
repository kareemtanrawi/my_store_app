import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animation/animation_do.dart';
import 'package:store_app/core/common/widget/custom_text_feild.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/utils/app_regex.dart';

class SignUpTextFrom extends StatefulWidget {
  const SignUpTextFrom({super.key});

  @override
  State<SignUpTextFrom> createState() => _SignUpTextFromState();
}

class _SignUpTextFromState extends State<SignUpTextFrom> {
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //! FullName Text Form Field
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.fullName),
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 2) {
                  return context.translate(LangKeys.validName);
                }
                return null;
              },
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          //! Email Text Form Field
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.email),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (!AppRegex.isEmailValid('')) {
                  return context.translate(LangKeys.validEmail);
                }
                return null;
              },
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.password),
              keyboardType: TextInputType.visiblePassword,
              obscureText: isShowPassword,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return context.translate(LangKeys.validPasswrod);
                }
                return null;
              },
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
                icon: Icon(
                  isShowPassword ? Icons.visibility_off : Icons.visibility,
                  color: context.color.textColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
