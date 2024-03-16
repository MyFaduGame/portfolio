//Third Party Imports
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:neopop/neopop.dart';
import 'dart:convert';
import 'package:email_validator/email_validator.dart';
import 'package:portfolio/theme/app_images.dart';
import 'package:portfolio/utils/footer_util.dart';
import 'package:url_launcher/url_launcher.dart';

//Local Imports
import 'package:portfolio/widget/drawer.dart';
import 'package:portfolio/routes.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  // late TextEditingController emailController;
  // late TextEditingController nameController;
  // late TextEditingController messageController;

  @override
  Widget build(BuildContext context) {
    String serviceId = "email_service";
    String templateId = "custom_email_template";
    String userId = "cHtPdicZKYxbIQHsWAJD-";
    Future sendEmail(String name, String email, String message) async {
      final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
      final response = await http.post(url,
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            'service_id': serviceId,
            'template_id': templateId,
            'user_id': userId,
            'template_params': {
              'from_name': name,
              'from_email': email,
              'message': message
            }
          }));
      return response.statusCode;
    }

    final advancedDrawerController = AdvancedDrawerController();

    void _handleMenuButtonPressed() {
      advancedDrawerController.showDrawer();
    }

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    snack() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Something went wrong"),
        ),
      );
    }

    return AdvancedDrawer(
        backdropColor: const Color.fromARGB(255, 0, 0, 0),
        controller: advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        openRatio: 0.35,
        disabledGestures: false,
        drawer: const SafeArea(
          child: DrawerWidget(),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(homeRoute, (route) => false);
              },
              child: Text(
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
                  //     var urllaunchable = await canLaunchUrl(
                  //         Uri.https("dribbble.com", "/gauransh18"));
                  //     if (urllaunchable) {
                  //       await launchUrl(
                  //           Uri.https("dribbble.com", "/gauransh18"));
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
                  children: [
                    const SizedBox(height: 40),
                    Center(
                      child: Text(
                        'Contact Us!',
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
                    Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(height: 40),
                          Container(
                            width: (width - 100 > 500) ? 500 : width - 100,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 17, 17, 17),
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: TextFormField(
                                cursorColor: Colors.white,
                                style: GoogleFonts.gruppo(
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 0.0,
                                  ),
                                ),
                                controller: nameController,
                                decoration: InputDecoration(
                                  hintText: 'name',
                                  hintStyle: GoogleFonts.gruppo(
                                    fontSize: 22,
                                    color: const Color.fromARGB(
                                        255, 175, 175, 175),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return '*Required';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: (width - 100 > 500) ? 500 : width - 100,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 17, 17, 17),
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: TextFormField(
                                cursorColor: Colors.white,
                                style: GoogleFonts.gruppo(
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 0.0,
                                  ),
                                ),
                                controller: emailController,
                                decoration: InputDecoration(
                                  hintText: 'email',
                                  hintStyle: GoogleFonts.gruppo(
                                    fontSize: 22,
                                    color: const Color.fromARGB(
                                        255, 175, 175, 175),
                                  ),
                                ),
                                validator: (email) {
                                  if (email == null || email.isEmpty) {
                                    return '*Required';
                                  } else if (!EmailValidator.validate(email)) {
                                    return 'Please enter a valid Email';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            width: (width - 100 > 500) ? 500 : width - 100,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 17, 17, 17),
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: TextFormField(
                                maxLines: 6,
                                cursorColor: Colors.white,
                                style: GoogleFonts.gruppo(
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 0.0,
                                  ),
                                ),
                                controller: messageController,
                                decoration: InputDecoration(
                                  hintText: 'message',
                                  hintStyle: GoogleFonts.gruppo(
                                    fontSize: 22,
                                    color: const Color.fromARGB(
                                        255, 175, 175, 175),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return '*Required';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          NeoPopButton(
                            onTapUp: () async {
                              if (_formKey.currentState!.validate()) {
                                final response = await sendEmail(
                                    nameController.value.text,
                                    emailController.value.text,
                                    messageController.value.text);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  response == 200
                                      ? const SnackBar(
                                          content: Text('Message Sent!'),
                                          backgroundColor: Colors.green)
                                      : const SnackBar(
                                          content:
                                              Text('Failed to send message!'),
                                          backgroundColor: Colors.red),
                                );
                                nameController.clear();
                                emailController.clear();
                                messageController.clear();
                              }
                            },
                            rightShadowColor: Colors.amber,
                            bottomShadowColor: Colors.amber,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Text(
                                "send",
                                style: GoogleFonts.abel(
                                  color: Colors.black,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: (height > width)
                          ? ((height - width) * 20 > 500)
                              ? 500
                              : (height - width) * 10
                          : 350,
                    ),
                    const FooterWidget(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
