//Third Party Imports
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marqueer/marqueer.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';
import 'package:portfolio/routes.dart';
import 'package:portfolio/theme/app_colors.dart';
import 'package:portfolio/theme/app_images.dart';
import 'package:portfolio/utils/card_utils.dart';
import 'package:portfolio/utils/footer_util.dart';
import 'package:portfolio/widget/about_me.dart';
import 'package:portfolio/widget/drawer.dart';
import 'package:portfolio/widget/work.dart';
import 'package:url_launcher/url_launcher.dart';

//Local Imports

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final advancedDrawerController = AdvancedDrawerController();

    void handleMenuButtonPressed() {
      advancedDrawerController.showDrawer();
    }

    snack() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Something went wrong"),
        ),
      );
    }

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return AdvancedDrawer(
      backdropColor: const Color.fromARGB(255, 0, 0, 0),
      controller: advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      openRatio: 0.35,
      disabledGestures: false,
      drawer: const SafeArea(child: DrawerWidget()),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
          title: Text(
            'MyFaduGame',
            style: GoogleFonts.yujiBoku(
              textStyle: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 26,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.0,
              ),
            ),
          ),

          centerTitle: true,
          // backgroundColor: Color.fromARGB(255, 17, 17, 17),
          backgroundColor: Colors.transparent,
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          scrolledUnderElevation: 5,
          toolbarHeight: 72,
          actions: [
            Row(
              children: [
                //Have to chagne the drive link
                TextButton.icon(
                  onPressed: () async {
                    //https://docs.google.com/document/d/1ZFYpGN8CIYEXPGu_8QrZWieK9XI2GJtk/edit?usp=sharing&ouid=117598672561417747524&rtpof=true&sd=true
                    var urllaunchable = await canLaunchUrl(Uri.https(
                        "docs.google.com",
                        "document/d/1ZFYpGN8CIYEXPGu_8QrZWieK9XI2GJtk/edit?usp=sharing&ouid=117598672561417747524&rtpof=true&sd=true"));
                    if (urllaunchable) {
                      await launchUrl(Uri.https("docs.google.com",
                          "document/d/1ZFYpGN8CIYEXPGu_8QrZWieK9XI2GJtk/edit?usp=sharing&ouid=117598672561417747524&rtpof=true&sd=true"));
                    } else {
                      snack();
                    }
                  },
                  label: Text(
                    "Resume",
                    style: GoogleFonts.bungeeHairline(
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0.0,
                      ),
                    ),
                  ),
                  icon: const Icon(Icons.note, color: Colors.white),
                ),
                // TextButton.icon(
                //   onPressed: () async {
                //     //https://readymag.com/gauransh18/4239311/
                //     var urllaunchable = await canLaunchUrl(
                //         Uri.https("dribbble.com", "/gauransh18"));
                //     if (urllaunchable) {
                //       await launchUrl(Uri.https("dribbble.com", "/gauransh18"));
                //     } else {
                //       snack();
                //     }
                //   },
                //   label: Text(
                //     "  art\nwork",
                //     style: GoogleFonts.bungeeHairline(
                //       textStyle: TextStyle(
                //         color: Color.fromARGB(255, 255, 255, 255),
                //         fontSize: 22,
                //         fontWeight: FontWeight.bold,
                //         fontStyle: FontStyle.normal,
                //         letterSpacing: 0.0,
                //       ),
                //     ),
                //   ),
                //   icon: Icon(Icons.palette_outlined, color: Colors.white),
                // ),
              ],
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: Container(
              color: const Color.fromARGB(255, 55, 66, 79),
              child: Container(
                height: 1.0,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color.fromARGB(255, 55, 66, 79),
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 17, 17, 17),
        body: Stack(
          children: [
            const SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: GridPaper(
                color: Color.fromARGB(255, 55, 66, 79),
                interval: 100,
                subdivisions: 1,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Center(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 66, 20, 20),
                            child:
                                //FittedBox(
                                //fit: BoxFit.fitWidth,
                                // child:
                                Center(
                              child: Text(
                                'hi, I\'m MyFaduGame',
                                style: GoogleFonts.openSans(
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 0.0,
                                  ),
                                ),
                              ),
                            ),
                            //  ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                            child: Center(
                              child: Text(
                                'एको अहं, द्वितीयो नास्ति, न भूतो न भविष्यति',
                                style: GoogleFonts.bungeeHairline(
                                  textStyle: TextStyle(
                                    color: AppColors().neonColor,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 0.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                '   Gamer & Creative Developer ',
                                style: GoogleFonts.abel(
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 0.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: NeoPopButton(
                                color: Colors.white,
                                rightShadowColor:
                                    const Color.fromARGB(255, 135, 163, 177),
                                bottomShadowColor: Colors.blueGrey,
                                onTapUp: () {
                                  Navigator.of(context).pushNamed(formRoute);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 20),
                                  child: Text(
                                    "Got a project? Let's chat!",
                                    style: GoogleFonts.gruppo(
                                      textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 33,
                                ),
                                Text(
                                  "I am Good at ",
                                  style: GoogleFonts.abel(
                                    textStyle: const TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                ),
                                AnimatedTextKit(
                                  displayFullTextOnTap: true,
                                  repeatForever: true,
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      'building an Application',
                                      textStyle: GoogleFonts.abel(
                                        textStyle: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                    TypewriterAnimatedText(
                                      'editing an Creative video',
                                      textStyle: GoogleFonts.abel(
                                        textStyle: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                    TypewriterAnimatedText(
                                      'design a Fancy logo',
                                      textStyle: GoogleFonts.abel(
                                        textStyle: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                    TypewriterAnimatedText(
                                      'create an Website',
                                      textStyle: GoogleFonts.abel(
                                        textStyle: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                    TypewriterAnimatedText(
                                      'configure an Backend',
                                      textStyle: GoogleFonts.abel(
                                        textStyle: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                    TypewriterAnimatedText(
                                      'managing Project',
                                      textStyle: GoogleFonts.abel(
                                        textStyle: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                    TypewriterAnimatedText(
                                      'securing Application',
                                      textStyle: GoogleFonts.abel(
                                        textStyle: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                    //Add More if needed
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 17, 17, 17),
                    ),
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(10),
                    child: const AboutMeWidget(),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 17, 17, 17),
                    ),
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const WorkWidget(),
                        Center(
                          child: Text(
                            'This are only Few....',
                            style: GoogleFonts.bungeeHairline(
                              textStyle: const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                letterSpacing: 0.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text(
                      'My Skills',
                      style: GoogleFonts.bungeeHairline(
                        textStyle: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    //Frontend
                    height: 100,
                    child: Marqueer(
                      interaction: false,
                      pps: 32,
                      direction: MarqueerDirection.ltr,
                      restartAfterInteractionDuration:
                          const Duration(seconds: 3),
                      child: Row(
                        children: [
                          CardUtil(
                              imageUrl: TechImages.premierPro,
                              showText: 'Premiere\nPro'),
                          CardUtil(
                              imageUrl: TechImages.illustrator,
                              showText: 'Illustrator'),
                          CardUtil(
                              imageUrl: TechImages.flutter,
                              showText: 'Flutter'),
                          CardUtil(imageUrl: TechImages.dart, showText: 'Dart'),
                          CardUtil(
                              imageUrl: TechImages.procreate,
                              showText: 'ProCreate'),
                          CardUtil(
                              imageUrl: TechImages.photoshop,
                              showText: 'Photoshop'),
                          CardUtil(
                              imageUrl: TechImages.canva, showText: 'Canva'),
                          CardUtil(
                              imageUrl: TechImages.figma, showText: 'Figma'),
                          CardUtil(
                              imageUrl: TechImages.html, showText: 'HTML 5'),
                          CardUtil(imageUrl: TechImages.css, showText: 'CSS'),
                          CardUtil(
                              imageUrl: TechImages.vectornator,
                              showText: 'Vectornator'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    //Backend
                    height: 100,
                    child: Marqueer(
                      interaction: false,
                      pps: 31,
                      direction: MarqueerDirection.rtl,
                      restartAfterInteractionDuration:
                          const Duration(seconds: 3),
                      child: Row(
                        children: [
                          CardUtil(
                              imageUrl: TechImages.python, showText: 'Python'),
                          CardUtil(
                              imageUrl: TechImages.git,
                              showText: 'Git'), //django,flask,fast,jin,laravel
                          CardUtil(
                              imageUrl: TechImages.django, showText: 'Django'),
                          CardUtil(
                              imageUrl: TechImages.flask, showText: 'Flask'),
                          CardUtil(imageUrl: TechImages.gin, showText: 'Gin'),
                          CardUtil(
                              imageUrl: TechImages.dartFrog,
                              showText: 'Dart Frog'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    //database and related
                    height: 100,
                    child: Marqueer(
                      interaction: false,
                      pps: 30,
                      direction: MarqueerDirection.ltr,
                      restartAfterInteractionDuration:
                          const Duration(seconds: 3),
                      child: Row(
                        children: [
                          CardUtil(
                              imageUrl: TechImages.mySql, showText: 'MySql'),
                          CardUtil(
                              imageUrl: TechImages.casandra,
                              showText: 'Casandra DB'),
                          CardUtil(
                              imageUrl: TechImages.redis, showText: 'Redis'),
                          CardUtil(
                              imageUrl: TechImages.memCache,
                              showText: 'MemCache'),
                          CardUtil(
                              imageUrl: TechImages.mongodb,
                              showText: 'Mongo DB'),
                          CardUtil(
                              imageUrl: TechImages.postgres,
                              showText: 'Postgres'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: Marqueer(
                      interaction: false,
                      pps: 30,
                      direction: MarqueerDirection.rtl,
                      restartAfterInteractionDuration:
                          const Duration(seconds: 3),
                      child: Row(
                        children: [
                          CardUtil(imageUrl: TechImages.cpp, showText: 'C++'),
                          CardUtil(imageUrl: TechImages.c, showText: 'C'),
                          CardUtil(imageUrl: TechImages.aws, showText: 'Aws'),
                          CardUtil(imageUrl: TechImages.gcp, showText: 'GCP'),
                          CardUtil(
                              imageUrl: TechImages.azure, showText: 'Azure'),
                          CardUtil(
                              imageUrl: TechImages.linux, showText: 'Linux'),
                          CardUtil(
                              imageUrl: TechImages.kali,
                              showText: 'Kali Linux'),
                          CardUtil(
                              imageUrl: TechImages.blackArc,
                              showText: 'Black Arch'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: (height - width > 200) ? height - width - 100 : 200,
                  ),
                  const FooterWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
