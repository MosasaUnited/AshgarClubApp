import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagra_club_app/core/routes/app_router.dart';
import 'package:shagra_club_app/core/widgets/app_text_button.dart';
import 'package:shagra_club_app/features/signup/logic/sign_up_cubit.dart';
import 'package:shagra_club_app/features/signup/presentation/widgets/already_have_account.dart';
import 'package:shagra_club_app/features/signup/presentation/widgets/sign_up_bloc_listener.dart';

import '../../../../core/theme/styles.dart';
import '../widgets/sign_up_form.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome',
                  textDirection: TextDirection.ltr,
                  style: Styles.textStyle20.copyWith(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Sign Up now and start to explore all your Club Utilities',
                  style: Styles.textStyle14,
                ),
                SizedBox(
                  height: 36.sp,
                ),
                Column(
                  children: [
                    const SignupForm(),
                    SizedBox(
                      height: 40.h,
                    ),
                    AppTextButton(
                      buttonText: 'Create Account',
                      textStyle: Styles.textStyle16.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                      onPressed: () {
                        //TODO: use this function when api is ready
                        // validateThenDoSignUp(context);
                        // Instead of this will now navigate by default Routing
                        if (context
                            .read<SignupCubit>()
                            .formKey
                            .currentState!
                            .validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.pinkAccent,
                              content: Text('You Are Ready Now, Login Now'),
                            ),
                          );
                          GoRouter.of(context).push(AppRouter.kLogin);
                        }
                      },
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const AlreadyHaveAccount(),
                    const SignUpBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
