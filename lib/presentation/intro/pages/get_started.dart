import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/assets/app_images.dart';
import 'package:spotify/core/assets/app_vector.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

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
                    AppImages.introBG
                  ),
                fit: BoxFit.fill,
              )
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
                    'Enjoy Listening To Music',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18
                  ),
                ),
                SizedBox(height: 21,),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                      'sed do eiusmod tempor incididunt ut labore et dolore '
                      'magna aliqua.',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 13
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
                BasicAppButton(
                    onPressed: () {},
                    title: 'Get Started',
                )
              ],
            ),
          ),

          Container(
            color: Colors.black.withOpacity(0.15),
          )
        ],
      ),
    );
  }
}
