import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:livfluence_main/constants.dart';
import 'package:livfluence_main/screens/enter_otp.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class Authenticate_otp extends StatefulWidget {
  Authenticate_otp({super.key});

  @override
  State<Authenticate_otp> createState() => _Authenticate_otpState();
}

class _Authenticate_otpState extends State<Authenticate_otp> {
  // text editing controllers
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    bool _isLoading = false;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: '#F5F5F5'.toColor(),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Image.asset('assets/images/backbutton.png'),
        ),
        //centerTitle: true,
        title: Image.asset('assets/images/Group 635.png'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.036,
            ),
            Text(
              'Welcome',
              style: GoogleFonts.openSans(
                color: '#000000'.toColor(),
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: size.height * 0.1,
            ),
            Row(
              children: [
                SizedBox(
                  width: 28,
                ),
                Text(
                  'OTP Verification',
                  style: GoogleFonts.openSans(
                    color: '#595959'.toColor(),
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Container(
              height: size.height * 0.06,
            ),
            Row(
              children: [
                SizedBox(
                  width: 28,
                ),
              ],
            ),
            Container(
              height: size.height * 0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 6,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  child: OtpTextField(
        numberOfFields: 5,
        borderColor: Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
            showDialog(
                context: context,
                builder: (context){
                return AlertDialog(
                    title: Text("Verification Code"),
                    content: Text('Code entered is $verificationCode'),
                );
                }
            );
        }, // end onSubmit
    ),
                ),
              ],
            ),
            Container(
              height: size.height * 0.045,
            ),
            FadeInDown(
              delay: Duration(milliseconds: 600),
              child: MaterialButton(
                minWidth: 258,
                onPressed: () {
                  //Get.to(Authenticate_otp());
                },
                color: '#D41717'.toColor(),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9)),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: /*_isLoading
                    ? Container(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.white,
                          color: Colors.black,
                          strokeWidth: 2,
                        ),
                      ) 
                    :*/
                    Text(
                  "Verify",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            FadeInDown(
              delay: Duration(milliseconds: 800),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: '#A9A9A9'.toColor(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Log in with other ways',
                      style: GoogleFonts.poppins(
                        color: '#A6A6A6'.toColor(),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: '#A9A9A9'.toColor(),
                    ),
                  ),
                ],
              ),
            ),
            FadeInDown(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /* SizedBox(
                            width: 62,
                          ), */
                  IconButton(
                    icon: Image.asset('assets/images/google.png'),
                    iconSize: 20,
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/facebook.png'),
                    iconSize: 20,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
