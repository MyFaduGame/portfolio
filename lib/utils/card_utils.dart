import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardUtil extends StatefulWidget {
  final String imageUrl;
  final String showText;
  const CardUtil({
    super.key,
    required this.imageUrl,
    required this.showText,
  });

  @override
  State<CardUtil> createState() => _CardUtilState();
}

class _CardUtilState extends State<CardUtil> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: const Color.fromARGB(255, 100, 99, 99),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: const Color.fromARGB(255, 0, 0, 0),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 75,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                widget.imageUrl,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
            child: Text(
              widget.showText,
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
