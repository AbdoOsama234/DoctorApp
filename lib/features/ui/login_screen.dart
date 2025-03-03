import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/helpers/spacing.dart';
import 'package:project/core/theming/colors.dart';
import 'package:project/core/theming/styles.dart';
import 'package:project/core/widgets/app_text_button.dart';
import 'package:project/core/widgets/app_text_form_field.dart';
import 'package:project/features/ui/wedgets/dont_have_account_text.dart';
import 'package:project/features/ui/wedgets/email_and_password.dart';
import 'package:project/features/ui/wedgets/terms_and_conditions_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey=GlobalKey<FormState>();
  bool isObsecureText=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30.w,vertical: 50.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back',
                  style: TextStyles.font24BlueBold,


                ),
                verticalSpace(8),
                Text('We are excited to have you back, cant wait to see what you have been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
//jkgkjkjgkj
                    const EmailAndPassword(),
                    const AppTextFormField(hintText:'Email'),
                    verticalSpace(18.0),
                     AppTextFormField(hintText:'Password',
                      isObscureText: isObsecureText,
                      suffixIcon: GestureDetector(
                        onTap:()
                        {
                          setState(() {
                            isObsecureText=!isObsecureText;

                          });
                        },

                          child: Icon(
                              isObsecureText?Icons.visibility_off:Icons.visibility)),


                    ),
                    verticalSpace(24),
                    Align(
                      alignment:AlignmentDirectional.centerEnd ,
                        child: Text('Forgot Password?',

                        style: TextStyles.font13BlueRegular,
                        ),
                    ),
                    verticalSpace(40),
                    AppTextButton(buttonText: 'Login',
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: ()
                        {

                        }),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(60),
                    const DontHaveAccountText()




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
