import 'package:flutter/material.dart';
import 'package:flutter_basic/first_internship_project/text_fields.dart';
import 'package:google_fonts/google_fonts.dart';

class MainLogin extends StatelessWidget {
  const MainLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Center(
          child: Container(
            height: 400,
            width: 330,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              border: Border.all(
                color: Colors.greenAccent.withOpacity(0.1),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                    offset: Offset(5, 8),
                    color: Colors.greenAccent.withOpacity(0.2)),
              ],
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'LogIn Page',
                            style: GoogleFonts.artifika(
                                fontSize: 25, color: Colors.greenAccent),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 120, 0, 0),
                  child: CustomTextField(
                      textLabel: 'Email',
                      textHint: 'Enter Your Email',
                      icon: Icons.email),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 220, 0, 0),
                  child: CustomTextField(
                      textLabel: 'Password',
                      textHint: 'Enter Your Password',
                      icon: Icons.password),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(230, 300, 0, 0),
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Colors.greenAccent),
                    onPressed: () {},
                    child: Text(
                      'Log In',
                      style: GoogleFonts.notoSansLinearB(
                          fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
