import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagra_club_app/core/helpers/app_regex.dart';
import 'package:shagra_club_app/features/login/presentation/widgets/password_validations.dart';

import '../../../../core/widgets/app_text_form_field.dart';
import '../../logic/cubit/login_cubit.dart';

class MobileAndPassword extends StatefulWidget {
  const MobileAndPassword({super.key});

  @override
  State<MobileAndPassword> createState() => _MobileAndPasswordState();
}

class _MobileAndPasswordState extends State<MobileAndPassword> {
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(
      () {
        setState(() {
          hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
          hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
          hasSpecialCharacters =
              AppRegex.hasSpecialCharacter(passwordController.text);
          hasNumber = AppRegex.hasNumber(passwordController.text);
          hasMinLength = AppRegex.hasMinLength(passwordController.text);
        });
      },
    );
  }

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'ُPhone Number',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isMobileValid(value)) {
                return 'Please Enter a Valid Phone Number';
              }
            },
            controller: context.read<LoginCubit>().mobileController,
          ),
          SizedBox(
            height: 18.h,
          ),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'Password',
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(
                  () {
                    isObscureText = !isObscureText;
                  },
                );
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Enter a Valid Password';
              }
            },
          ),
          SizedBox(
            height: 15.h,
          ),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacter: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
