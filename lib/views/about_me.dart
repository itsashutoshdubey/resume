import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resume/globals/app_assets.dart';
import 'package:resume/globals/app_colors.dart';
import 'package:resume/globals/constants.dart';
import 'package:resume/helper%20class/helper_class.dart';
import '../globals/app_buttons.dart';
import '../globals/app_text_styles.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildAboutMeContents(),
          Constants.sizedBox(height: 35.0),
          buildProfilePicture(),
        ],
      ),
      tablet: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildProfilePicture(),
          Constants.sizedBox(width: 25.0),
          Expanded(child: buildAboutMeContents())
        ],
      ),
      desktop: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildProfilePicture(),
          Constants.sizedBox(width: 25.0),
          Expanded(child: buildAboutMeContents())
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }

  FadeInRight buildProfilePicture() {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: Image.asset(
        AppAssets.profile2,
        height: 450,
        width: 400,
      ),
    );
  }

  Column buildAboutMeContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInRight(
          duration: const Duration(milliseconds: 1200),
          child: RichText(
            text: TextSpan(
              text: 'About ',
              style: AppTextStyles.headingStyles(fontSize: 30.0),
              children: [
                TextSpan(
                  text: 'Me!',
                  style: AppTextStyles.headingStyles(
                      fontSize: 30, color: AppColors.robinEdgeBlue),
                )
              ],
            ),
          ),
        ),
        Constants.sizedBox(height: 6.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'Flutter Developer!',
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 8.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Text(
    "Hello! I’m Ashutosh Dubey, a second-year B.Tech student in the Electrical and Electronics Engineering department at VNIT Nagpur. As a passionate tech enthusiast, I thrive on exploring and creating innovative solutions. I have a strong foundation in app development, utilizing Flutter for the frontend and Firebase as the database. My skills extend to web development, where I leverage Flutter’s cross-platform capabilities to build responsive and dynamic websites. Additionally, I have a keen interest in game development and enjoy crafting immersive experiences using the Unity game engine. In the realm of game development, Unity allows me to bring my creative visions to life, whether it’s designing intricate game mechanics or developing captivating storylines. The versatility of Unity enables me to experiment with various genres and styles, making each project a unique learning experience. Currently, I am working on a full-fledged Instagram clone, handling both the frontend and backend development. This project is a testament to my dedication to mastering complex systems and delivering user-friendly applications. I also excel in management, effectively balancing multiple projects and responsibilities. My organizational skills and ability to lead teams ensure that projects are completed efficiently and to a high standard. Whether it’s coordinating a group project or managing my own time, I strive to maintain a productive and collaborative environment. Beyond technology, I have a deep appreciation for literature and poetry, which fuels my creativity and broadens my perspective. Whether it’s diving into a classic novel or penning my own verses, literature is a constant source of inspiration for me.",
    style: AppTextStyles.normalStyle(),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: AppButtons.buildMaterialButton(
              onTap: () {}, buttonName: 'Read More'),
        )
      ],
    );
  }
}