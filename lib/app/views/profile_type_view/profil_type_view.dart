import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:influencer_app/core/constants/colors_constants/light_theme_constants/light_theme_color_constants.dart';
import 'package:influencer_app/core/extension/context_extension.dart';
import 'package:influencer_app/gen/assets.gen.dart';

@RoutePage()
class ProfileTypeView extends StatelessWidget {
  const ProfileTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppLightColorConstants.bgLight,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "TITLE",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            // SizedBox(height: context.constHighValue* 19/10,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
              ),
              width: context.width * .92,
              child: Image.asset(
                Assets.images.png.imagePngProfileThemeOne.path,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
              ),
              width: context.width * .92,
              child: Image.asset(
                Assets.images.png.imagePngProfileThemeOne.path,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
