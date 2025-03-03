import 'package:flutter/material.dart';
import 'package:project/core/helpers/extensions.dart';
import 'package:project/core/routing/routes.dart';
import 'package:project/core/theming/colors.dart';

import '../../../core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      context.pushNamed(Routes.loginScreen);
    },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
          minimumSize: MaterialStateProperty.all(const Size(double.infinity, 60)),
          shape:MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )
          )
        ),
        child: Text(
          'Get Started',
          style: TextStyles.font16WhiteSemiBold,
        )
    );
  }
}
