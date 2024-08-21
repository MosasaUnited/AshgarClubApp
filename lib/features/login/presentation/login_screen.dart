import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagra_club_app/features/login/logic/cubit/login_cubit.dart';
import 'package:shagra_club_app/features/login/presentation/widgets/login_bloc_listener.dart';
import 'package:shagra_club_app/features/login/presentation/widgets/mobile_and_password.dart';

import '../../../core/constants/image_assets.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/font_weight_helper.dart';
import '../../../core/theme/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../data/models/login_request_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  textDirection: TextDirection.ltr,
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
                Column(
                  children: [
                    const MobileAndPassword(),
                    SizedBox(
                      height: 10.h,
                    ),
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: Styles.textStyle16.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w700),
                      onPressed: () {
                        validateThenDoLogin(context);
                        // GoRouter.of(context).push(AppRouter.kHome);
                      },
                    ),
                    const LoginBlocListener(),
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
            LoginRequestBody(
              mobile: context.read<LoginCubit>().mobileController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
    }
  }
}
