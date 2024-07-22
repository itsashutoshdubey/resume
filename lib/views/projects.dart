import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resume/globals/app_assets.dart';
import 'package:resume/globals/app_buttons.dart';
import 'package:resume/globals/app_colors.dart';
import 'package:resume/globals/app_text_styles.dart';
import 'package:resume/globals/constants.dart';

class Services extends StatelessWidget {
   Services({super.key});





  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            buildMyServicesText(),
            Constants.sizedBox(height: 60.0),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
        
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
          decoration: BoxDecoration(
            color: AppColors.bgColor2,
            borderRadius: BorderRadius.circular(30),
            border:
            Border.all(color: AppColors.themeColor, width: 3),
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                spreadRadius: 4.0,
                blurRadius: 4.5,
                offset: Offset(3.0, 4.5),
              )
            ],
          ),
          child: Column(
            children: [
              Image.asset('assets/amm.png',
                width: 150,
                height: 100,
              ),
              Constants.sizedBox(height: 30.0),
              Text(
                'Instagram Clone',
                style: AppTextStyles.montserratStyle(
                    color: Colors.white, fontSize: 22.0),
              ),
              Constants.sizedBox(height: 12.0),
              Text(
                 " I’m developing a full-fledged Instagram clone using Flutter for the frontend and Firebase for the backend and database. The app will include key features like user authentication, photo and video sharing, real-time notifications, and social interactions. It’s designed for both iOS and Android platforms and is nearing completion. it is on the verge of completion and will be ready to launch soon",
                style: AppTextStyles.normalStyle(fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
              Constants.sizedBox(height: 20.0),
              AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
            ],
          ),
        ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
        
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
              decoration: BoxDecoration(
                color: AppColors.bgColor2,
                borderRadius: BorderRadius.circular(30),
                border:
                Border.all(color: AppColors.themeColor, width: 3),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    spreadRadius: 4.0,
                    blurRadius: 4.5,
                    offset: Offset(3.0, 4.5),
                  )
                ],
              ),
              child: Column(
                children: [
                  Image.asset('assets/amm1.png',
                    width: 150,
                    height: 100,
                  ),
                  Constants.sizedBox(height: 30.0),
                  Text(
                    'Photo-Editor',
                    style: AppTextStyles.montserratStyle(
                        color: Colors.white, fontSize: 22.0),
                  ),
                  Constants.sizedBox(height: 12.0),
                  Text(
                     " I made a cross-platform photo-editor application using Flutter, Dart and Android Studio, which supports all major operating systems such as Android, iOS and Web. This application offers the following functionalities like picking image from gallery and camera, Image Cropping, Image rotation, Setting up the aspect ratio, zooming features, Image Masking. the file of dart code, relevant dependencies and required assets are available in my github repository.",
                    style: AppTextStyles.normalStyle(fontSize: 14.0),
                    textAlign: TextAlign.center,
                  ),
                  Constants.sizedBox(height: 20.0),
                  AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
                ],
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
        
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
              decoration: BoxDecoration(
                color: AppColors.bgColor2,
                borderRadius: BorderRadius.circular(30),
                border:
                Border.all(color: AppColors.themeColor, width: 3),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    spreadRadius: 4.0,
                    blurRadius: 4.5,
                    offset: Offset(3.0, 4.5),
                  )
                ],
              ),
              child: Column(
                children: [
                  Image.asset('assets/amm3.png',
                    width: 150,
                    height: 100,
                  ),
                  Constants.sizedBox(height: 30.0),
                  Text(
                    'Quiz Website',
                    style: AppTextStyles.montserratStyle(
                        color: Colors.white, fontSize: 22.0),
                  ),
                  Constants.sizedBox(height: 12.0),
                  Text(
                     " I developed a quiz website that offers a dynamic and engaging platform for users to test their knowledge across various topics. The website features a user-friendly interface, real-time scoring, and a diverse range of quiz categories. It is designed to provide an interactive and enjoyable learning experience for users of all ages.",
                    style: AppTextStyles.normalStyle(fontSize: 14.0),
                    textAlign: TextAlign.center,
                  ),
                  Constants.sizedBox(height: 20.0),
                  AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
                ],
              ),
            )
        
          ],
        ),
      );
  }
}

FadeInDown buildMyServicesText() {
  return FadeInDown(
    duration: const Duration(milliseconds: 1200),
    child: RichText(
      text: TextSpan(
        text: 'My ',
        style: AppTextStyles.headingStyles(fontSize: 30.0),
        children: [
          TextSpan(
            text: ' Projects',
            style: AppTextStyles.headingStyles(
                fontSize: 30.0, color: AppColors.robinEdgeBlue),
          )
        ],
      ),
    ),
  );
}

