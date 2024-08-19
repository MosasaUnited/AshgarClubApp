import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/image_assets.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/font_weight_helper.dart';
import '../../../core/theme/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/app_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Welcome Back',
                  textDirection: TextDirection.rtl,
                  style: Styles.textStyle30.copyWith(
                      color: MyColors.secondaryColor,
                      fontWeight: FontWeightHelper.extraBold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Image.asset(
                  ImageAssets.appLogoImage,
                  width: double.infinity.w,
                  height: 200.h,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(
                        hintText: 'ُPhone Number',
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      AppTextButton(
                        buttonText: 'Login',
                        textStyle: Styles.textStyle16.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w700),
                        onPressed: () {
                          // GoRouter.of(context).push(AppRouter.kChooseClinic);
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              'Forget Password ?',
                              style: Styles.textStyle12,
                            ),
                          ),
                          const Spacer(),
                          Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Click Here',
                                style: Styles.textStyle12.copyWith(
                                  color: MyColors.secondaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              'New Member ? ',
                              style: Styles.textStyle12,
                            ),
                          ),
                          const Spacer(),
                          Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Register Now',
                                style: Styles.textStyle12.copyWith(
                                  color: MyColors.secondaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
