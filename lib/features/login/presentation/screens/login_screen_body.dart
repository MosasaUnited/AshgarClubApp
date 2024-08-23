import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagra_club_app/core/widgets/title_text.dart';
import 'package:shagra_club_app/features/login/logic/cubit/login_cubit.dart';
import 'package:shagra_club_app/features/login/presentation/widgets/forget_password.dart';
import 'package:shagra_club_app/features/login/presentation/widgets/login_bloc_listener.dart';
import 'package:shagra_club_app/features/login/presentation/widgets/mobile_and_password.dart';

import '../../../../core/constants/image_assets.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../widgets/new_member_register.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const TitleText(prefix: 'Welcome', title: 'Back'),
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
                        // TODO: use this function when api is ready >>
                        // validateThenDoLogin(context);
                        // Instead of this will now navigate by default
                        if (context
                            .read<LoginCubit>()
                            .formKey
                            .currentState!
                            .validate()) {
                          GoRouter.of(context).push(AppRouter.kMainScreen);
                        }
                      },
                    ),
                    const LoginBlocListener(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const ForgetPassword(),
                    const NewMemberRegister(),
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
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
