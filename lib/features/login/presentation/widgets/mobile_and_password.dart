// import 'package:aedc_clinic/features/login/logic/cubit/login_cubit.dart';
// import 'package:aedc_clinic/features/login/presentation/widgets/password_validations.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../../core/widgets/app_text_form_field.dart';
//
// class MobileAndPassword extends StatefulWidget {
//   const MobileAndPassword({super.key});
//
//   @override
//   State<MobileAndPassword> createState() => _MobileAndPasswordState();
// }
//
// class _MobileAndPasswordState extends State<MobileAndPassword> {
//   bool isObscureText = true;
//
//   late TextEditingController passwordController;
//
//   @override
//   void initState() {
//     super.initState();
//     passwordController = context.read<LoginCubit>().passwordController;
//   }
//
//   bool hasLowerCase = false;
//   bool hasUpperCase = false;
//   bool hasSpecialCharacters = false;
//   bool hasNumber = false;
//   bool hasMinLength = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: context.read<LoginCubit>().formKey,
//       child: BlocProvider(
//         create: (_) => LoginCubit(),
//         child: Column(
//           children: [
//             AppTextFormField(
//               hintText: 'أدخل رقم الموبايل',
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'من فضلك أدخل رقم موبايل صحيح';
//                 }
//               },
//               controller: context.read<LoginCubit>().mobileController,
//             ),
//             SizedBox(
//               height: 18.h,
//             ),
//             AppTextFormField(
//               controller: context.read<LoginCubit>().passwordController,
//               hintText: 'كلمة السر',
//               isObscureText: isObscureText,
//               suffixIcon: GestureDetector(
//                 onTap: () {
//                   setState(
//                     () {
//                       isObscureText = !isObscureText;
//                     },
//                   );
//                 },
//                 child: Icon(
//                   isObscureText ? Icons.visibility_off : Icons.visibility,
//                 ),
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'من فضلك أدخل كلمة سر صحيحة';
//                 }
//               },
//             ),
//             SizedBox(
//               height: 24.h,
//             ),
//             PasswordValidations(
//               hasLowerCase: hasLowerCase,
//               hasUpperCase: hasUpperCase,
//               hasSpecialCharacter: hasSpecialCharacters,
//               hasNumber: hasNumber,
//               hasMinLength: hasMinLength,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
