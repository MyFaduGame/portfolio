//Third Party Imports
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Local imports
import 'package:portfolio/theme/app_class.dart';
import 'package:portfolio/theme/app_colors.dart';
import 'package:portfolio/theme/app_images.dart';
import 'package:portfolio/theme/app_strings.dart';

class AboutMeWidget extends StatefulWidget {
  const AboutMeWidget({super.key});

  @override
  State<AboutMeWidget> createState() => _AboutMeWidgetState();
}

class _AboutMeWidgetState extends State<AboutMeWidget> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    ScreenType scrType = AppClass().getScreenType(context);
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    if (scrType == ScreenType.web) {
      return Container(
        margin: EdgeInsets.only(
            left: AppClass().getMqWidth(context) * 0.03,
            right: AppClass().getMqWidth(context) * 0.03),
        padding: const EdgeInsets.only(bottom: 40),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: "01.",
                      style: TextStyle(
                          color: AppColors().neonColor,
                          fontSize: 20,
                          fontFamily: 'sfmono'),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' About Me',
                          style: GoogleFonts.robotoSlab(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )
                      ]),
                ),
                Container(
                  height: 0.5,
                  margin: const EdgeInsets.only(left: 15),
                  width: AppClass().getMqWidth(context) * 0.2,
                  color: AppColors().textLight,
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Text(
                          AppStrings.aboutPara1,
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          AppStrings.aboutPara2,
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          AppStrings.aboutPara3,
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          AppStrings.techIntro,
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: GridView.count(
                            crossAxisCount: 2,
                            shrinkWrap: true,
                            childAspectRatio: 10,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: AppColors().neonColor,
                                  ),
                                  Text(
                                    AppStrings.tech1,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors().textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: AppColors().neonColor,
                                  ),
                                  Text(
                                    AppStrings.tech2,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors().textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: AppColors().neonColor,
                                  ),
                                  Text(
                                    AppStrings.tech3,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors().textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right,
                                    color: AppColors().neonColor,
                                  ),
                                  Text(
                                    AppStrings.tech4,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors().textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: AppClass().getMqWidth(context) *
                                (isHovered ? 0.22 : 0.225),
                            height: AppClass().getMqWidth(context) *
                                (isHovered ? 0.22 : 0.225),
                            margin: const EdgeInsets.only(top: 10, left: 10),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5.0)),
                              border: Border.all(
                                  color: AppColors().neonColor, width: 1.5),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            onHover: (value) {
                              if (value) {
                                setState(() {
                                  isHovered = true;
                                });
                              } else {
                                setState(() {
                                  isHovered = false;
                                });
                              }
                            },
                            // onHover: (bol) {
                            //   if (bol) {
                            //     ref.read(hoverProvider.notifier).state =
                            //         "profilePic";
                            //   } else {
                            //     ref.read(hoverProvider.notifier).state = "";
                            //   }
                            // },
                            child: Container(
                              // duration: const Duration(milliseconds: 200),
                              width: AppClass().getMqWidth(context) * 0.22,
                              height: AppClass().getMqWidth(context) * 0.22,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                      AppColors().primaryColor,
                                      isHovered
                                          ? BlendMode.lighten
                                          : BlendMode.color,
                                    ),
                                    image: AssetImage(AppImages.profilePic),
                                  ),
                                  color: Colors.transparent),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      );
    } else {
      return Container(
        height: AppClass().getMqHeight(context) - 70,
        margin: const EdgeInsets.only(left: 20, right: 20),
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: "01.",
                      style: TextStyle(
                          color: AppColors().neonColor,
                          fontSize: 20,
                          fontFamily: 'sfmono'),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' About Me',
                          style: GoogleFonts.robotoSlab(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )
                      ]),
                ),
                Container(
                  height: 0.5,
                  margin: const EdgeInsets.only(left: 15),
                  width: AppClass().getMqWidth(context) * 0.2,
                  color: AppColors().textLight,
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Text(
                          AppStrings.aboutPara1,
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          AppStrings.aboutPara2,
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          AppStrings.aboutPara3,
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          AppStrings.techIntro,
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: GridView.count(
                            crossAxisCount: 2,
                            shrinkWrap: true,
                            childAspectRatio: 10,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.arrow_right),
                                  Text(' Flutter',
                                      style: GoogleFonts.robotoFlex(
                                        color: AppColors().textLight,
                                        letterSpacing: 1,
                                        height: 1.5,
                                        fontSize: 14,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.arrow_right),
                                  Text(AppStrings.tech2,
                                      style: GoogleFonts.robotoFlex(
                                        color: AppColors().textLight,
                                        letterSpacing: 1,
                                        height: 1.5,
                                        fontSize: 14,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.arrow_right),
                                  Text(AppStrings.tech3,
                                      style: GoogleFonts.robotoFlex(
                                        color: AppColors().textLight,
                                        letterSpacing: 1,
                                        height: 1.5,
                                        fontSize: 14,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.arrow_right),
                                  Text(AppStrings.tech4,
                                      style: GoogleFonts.robotoFlex(
                                        color: AppColors().textLight,
                                        letterSpacing: 1,
                                        height: 1.5,
                                        fontSize: 14,
                                      )),
                                ],
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }
  }
}
