import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/assets/app_images.dart';
import 'package:spotify/core/assets/app_vector.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 40
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      AppImages.chooseModeBG
                  ),
                  fit: BoxFit.fill,
                )
            ),
          ),

          Container(
            color: Colors.black.withOpacity(0.15),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 40
            ),
            child: Column(
              children: [
                Align(
                  child: SvgPicture.asset(
                      AppVectors.logo
                  ),
                  alignment: Alignment.center,
                ),
                Spacer(),
                Text(
                  'Choose Mode',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ClipOval(
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xff30393c).withOpacity(0.5),
                              shape: BoxShape.circle
                            ),
                            child: SvgPicture.asset(
                              AppVectors.moon,
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text(
                          'Dark Mode',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: AppColors.grey
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 40),
                    Column(
                      children: [
                        ClipOval(
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Color(0xff30393c).withOpacity(0.5),
                                shape: BoxShape.circle
                            ),
                            child: SvgPicture.asset(
                              AppVectors.sun,
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text(
                          'Light Mode',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: AppColors.grey
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                BasicAppButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (BuildContext builder) => const ChooseModePage()
                    //     )
                    // );
                  },
                  title: 'Continue',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
