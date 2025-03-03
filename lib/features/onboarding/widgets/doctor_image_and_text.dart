import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // يضمن أن العنصر يأخذ العرض الكامل
      height: 400, // يمكن تغيير الارتفاع حسب الحاجة
      child: Stack(
        alignment: Alignment.center, // يجعل العناصر متراكزة
        children: [
          // الخلفية
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/svgs/backgraound.svg',
              fit: BoxFit.cover,
            ),
          ),


          Positioned(
            bottom: 0,
            child: Container(
              width: 260,
              height: 410,
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0.14, 0.4],
                ),
              ),
              child: Image.asset(
                'assets/images/doctor.png',
                fit: BoxFit.cover,
              ),
              
            ),

          ),
          Positioned(
            bottom: 0, // النص يكون في الأسفل
            child: Text(
              'Best Doctor \nAppointment App',
              textAlign: TextAlign.center,
              style: TextStyles.font32BlueBold.copyWith(
                  height:1.6
              )

            ),
          ),

        ],

      ),

    );

  }
}
