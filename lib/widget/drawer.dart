//Third Party Imports
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  snack() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Something went wrong"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      textColor: Colors.white,
      iconColor: Colors.white,
      child: ListView(
        // mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: double.infinity,
            height: 200.0,
            // margin: const EdgeInsets.only(
            //   top: 24.0,
            //   bottom: 64.0,
            // ),
            // clipBehavior: Clip.antiAlias,
            // decoration: BoxDecoration(
            //   color: Colors.black26,
            //   shape: BoxShape.circle,
            // ),
            child: Image.asset(
              'assets/gif/imposter.gif',
              fit: BoxFit.fitHeight,
            ),
          ),
          //For Linkedin
          NeoPopButton(
            //bottomShadowColor: Color.fromARGB(255, 225, 225, 225),
            //rightShadowColor: Color.fromARGB(255, 255, 255, 255),
            color: const Color(0xFF0A66C2),

            onTapUp: () async {
              var urllaunchable = await canLaunchUrl(
                  Uri.https("linkedin.com", "/in/myfadugame"));
              if (urllaunchable) {
                await launchUrl(Uri.https("linkedin.com", "/in/myfadugame"));
              } else {
                snack();
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "linkedin",
                    style: GoogleFonts.abel(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          // For Facebook
          NeoPopButton(
            //   bottomShadowColor: Colors.orange,
            // rightShadowColor: Color.fromARGB(255, 67, 248, 146),
            color: const Color(0xFF1877F2),

            onTapUp: () async {
              var urllaunchable =
                  await canLaunchUrl(Uri.https("facebook.com", "/myfadugame"));
              if (urllaunchable) {
                await launchUrl(Uri.https("facebook.com", "/myfadugame"));
              } else {
                snack();
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "FaceBook",
                    style: GoogleFonts.abel(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          //For Instagram
          NeoPopButton(
            //bottomShadowColor: Color.fromARGB(255, 225, 225, 225),
            //rightShadowColor: Color.fromARGB(255, 255, 255, 255),
            color: const Color(0xFFE4405F),

            onTapUp: () async {
              var urllaunchable =
                  await canLaunchUrl(Uri.https("instagram.com", "/MyFaduGame"));
              if (urllaunchable) {
                await launchUrl(Uri.https("instagram.com", "/MyFaduGame"));
              } else {
                snack();
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Instagram",
                    style: GoogleFonts.abel(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          //For Github MyFaduGame
          NeoPopButton(
            //bottomShadowColor: Color.fromARGB(255, 225, 225, 225),
            //rightShadowColor: Color.fromARGB(255, 255, 255, 255),
            color: const Color(0xFF24292e),

            onTapUp: () async {
              var urllaunchable =
                  await canLaunchUrl(Uri.https("github.com", "/MyFaduGame"));
              if (urllaunchable) {
                await launchUrl(Uri.https("github.com", "/MyFaduGame"));
              } else {
                snack();
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "MyFaduGame Github",
                    style: GoogleFonts.abel(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          //For Github MyFaduGame
          NeoPopButton(
            //bottomShadowColor: Color.fromARGB(255, 225, 225, 225),
            //rightShadowColor: Color.fromARGB(255, 255, 255, 255),
            color: const Color(0xFF24292e),

            onTapUp: () async {
              var urllaunchable =
                  await canLaunchUrl(Uri.https("github.com", "great-ravan"));
              if (urllaunchable) {
                await launchUrl(Uri.https("github.com", "/great-ravan"));
              } else {
                snack();
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Great Ravan Github",
                    style: GoogleFonts.abel(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          //For Twitter
          NeoPopButton(
            //bottomShadowColor: Color.fromARGB(255, 225, 225, 225),
            //rightShadowColor: Color.fromARGB(255, 255, 255, 255),
            color: const Color(0xFF1DA1F2),

            onTapUp: () async {
              var urllaunchable =
                  await canLaunchUrl(Uri.https("twitter.com", "/myfadugame"));
              if (urllaunchable) {
                await launchUrl(Uri.https("twitter.com", "/myfadugame"));
              } else {
                snack();
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Twitter",
                    style: GoogleFonts.abel(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          //For YouTube
          NeoPopButton(
            //bottomShadowColor: Color.fromARGB(255, 225, 225, 225),
            //rightShadowColor: Color.fromARGB(255, 255, 255, 255),
            color: const Color(0xFFCD201F),

            onTapUp: () async {
              var urllaunchable =
                  await canLaunchUrl(Uri.https("youtube.com", "/@gamenoshame"));
              if (urllaunchable) {
                await launchUrl(Uri.https("youtube.com", "/@gamenoshame"));
              } else {
                snack();
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Youtube",
                    style: GoogleFonts.abel(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(
          //   height: height-444,
          // ),
          // DefaultTextStyle(
          //   style: TextStyle(
          //     fontSize: 12,
          //     color: Colors.white54,
          //   ),
          //   child: Container(
          //     margin: const EdgeInsets.symmetric(
          //       vertical: 16.0,
          //     ),
          //     child: Text('Terms of Service | Privacy Policy'),
          //   ),
          // ),
        ],
      ),
    );
  }
}
