import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:project/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:project/features/onboarding/widgets/get_started_button.dart';

import '../../core/theming/styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 30,
              top: 30,
            ),
            child: Column(

              children: [
             const DocLogoAndName(),
                SizedBox(height: 30.h,),
            const DoctorImageAndText(),
                SizedBox(height: 40.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      Text(
                          "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        textAlign: TextAlign.center,
                        style: TextStyles.font13GrayRegular,
                      ),

                      SizedBox(
                        height: 40.h,
                      ),
                      const GetStartedButton(),
                    ]
                  ),
                )



              ],
            ),
          ),
        )
        ),
      );

  }
}
