import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class workCard extends StatelessWidget {
  final String pName;
  final String pBrief;
  final String pImage;
  workCard({required this.pName, required this.pBrief, required this.pImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 275,
      width: 260,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xff3C3D37),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/$pImage.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 20,
            child: Text(pName,
                style: GoogleFonts.azeretMono(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff9DAC97),
                  ),
                )),
          ),
          Positioned(
            top: 180,
            left: 20,
            right: 20,
            child: Text(pBrief,
                style: GoogleFonts.azeretMono(
                  textStyle: TextStyle(
                    fontSize: 11,
                    color: Color(0xffffffff),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
