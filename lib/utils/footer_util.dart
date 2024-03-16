//Third Party Imports
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Local Imports
import 'package:portfolio/theme/app_images.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key});

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                TechImages.footer,
              ),
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Made with",
                      style:
                          GoogleFonts.abel(color: Colors.white, fontSize: 22)),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  Text("by MyFaduGame",
                      style:
                          GoogleFonts.abel(color: Colors.white, fontSize: 22)),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(
              height: 10
              ,
            ),
            Center(
              child: Text(
                'We die with the dying. We\'re born with the dead.',
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
        )
      ],
    );
  }
}
