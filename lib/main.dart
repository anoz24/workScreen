import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/widgets/work_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Work',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xff1E201E),
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xffECDFCC),
              ),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.view_list_rounded,
                  color: Color(0xffECDFCC),
                ),
                onPressed: () {},
              ),
            ],
            title: Text(
                textAlign: TextAlign.center,
                "Work",
                style: GoogleFonts.azeretMono(
                  textStyle: TextStyle(
                    color: Color(0xff9DAC97),
                    fontWeight: FontWeight.bold,
                  ),
                )),
            backgroundColor: Color.fromRGBO(10, 9, 9, 0),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(85.0),
            child: ListView(children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: workCard(
                  pName: 'CMS',
                  pBrief:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor.',
                  pImage: 'test',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: workCard(
                  pName: 'ERP System',
                  pBrief:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor.',
                  pImage: 'test',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: workCard(
                  pName: 'LMS',
                  pBrief:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor.',
                  pImage: 'test',
                ),
              )
            ]),
          ),
        ));
  }
}
