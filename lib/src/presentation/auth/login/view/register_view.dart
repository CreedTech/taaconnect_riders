import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../core/components/components.dart';
import '../../../../core/helpers/helpers.dart';
import '../../../../widgets/custom_text_field.dart';
import 'phone_number_otp_view.dart';

// import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final signUpFormKey = GlobalKey<FormState>();
  // bool enableSignIn = false;
  bool obscureText = true;
  // bool isChecked = false;
  // GlobalKey<FormState> _formKey = GlobalKey();

  // FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    _phoneNumberController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorWhite,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: colorsBlack,
          ),
        ),
        title: Text(
          'Become a driver',
        ).boldSized(16.sp).colors(colorsBlack),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              // bottom: 0.h,
              // left: 0,
              // right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 20.h),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'By continuing, you accept our ',
                          style: TextStyle(
                            height: 1.5,
                            color: colorsBlack,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Terms & Conditions ',
                                style: TextStyle(
                                  height: 1.5,
                                  color: colorPrimary,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                  }),
                            TextSpan(
                                text:
                                    'and confirm that you have read and understood the ',
                                style: TextStyle(
                                  height: 1.5,
                                  color: colorsBlack,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                  }),
                            TextSpan(
                                text: 'Privacy Policy ',
                                style: TextStyle(
                                  height: 1.5,
                                  color: colorPrimary,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                  }),
                            TextSpan(
                                text:
                                    'for drivers applicable for your country of operation ',
                                style: TextStyle(
                                  height: 1.5,
                                  color: colorsBlack,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                  }),
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 120.h),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PhoneNumberOtpView(
                                phone_number: _phoneNumberController.text,
                              ),
                            ),
                          );
                          // if (loginFormKey.currentState!.validate()) {
                          //   authState.signIn(
                          //       context,
                          //       _emailController.text.trim(),
                          //       _passwordController.text.trim());
                          // }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          padding: EdgeInsets.symmetric(vertical: 15.h),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: colorPrimary,
                            borderRadius:
                                BorderRadius.all(Radius.circular(88.sp)),
                          ),
                          child: Text(
                            'Sign Up',
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo_single.png',
                    height: 80.h,
                  ),
                  Form(
                    key: signUpFormKey,
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.h),
                              child: IntlPhoneField(
                                initialCountryCode: 'NG',
                                controller: _phoneNumberController,
                                decoration: InputDecoration(
                                  labelText: 'Phone Number',
                                  labelStyle:
                                      GoogleFonts.nunito(color: colorGray),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.sp),
                                    borderSide: const BorderSide(
                                        color: Color(0xffA4A5A6)),
                                  ),
                                  errorStyle: GoogleFonts.nunito(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600),
                                  hintStyle:
                                      GoogleFonts.nunito(color: textGray),
                                  filled: false,
                                  contentPadding: EdgeInsets.all(14.sp),
                                ),
                                onChanged: (phone) {
                                  print(phone.completeNumber);
                                },
                                onCountryChanged: (country) {
                                  print('Country changed to: ' + country.name);
                                },
                              ),
                            ),
                            Text(
                              'We will send a verification code to your number to confirm its you',
                              style: GoogleFonts.nunito(
                                color: colorsBlack,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        // CustomTextField(
                        //   prefixIcon: Icon(
                        //     Icons.lock_outline,
                        //     color: colorsBlack,
                        //   ),
                        //   legend: 'Password',
                        //   // labelText: 'Password',
                        //   controller: _passwordController,
                        //   obscureText: obscureText,
                        //   validator: (value) {
                        //     if (value == null || value.isEmpty) {
                        //       return 'Input a valid password';
                        //     }
                        //     if (value.length < 8) {
                        //       return "Min. 8 characters";
                        //     }

                        //     return null;
                        //   },
                        //   icon: GestureDetector(
                        //     onTap: () {
                        //       setState(() {
                        //         obscureText = !obscureText;
                        //       });
                        //     },
                        //     child: Icon(
                        //       obscureText
                        //           ? Icons.visibility_off_outlined
                        //           : Icons.visibility_outlined,
                        //       color: textGray,
                        //       size: 18.sp,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(vertical: 16.h),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Row(
                  //         children: [],
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Text(
                  //             'Already have an account? ',
                  //             style: TextStyle(
                  //               color: Colors.grey.shade700,
                  //               fontSize: 16.sp,
                  //               fontWeight: FontWeight.w400,
                  //             ),
                  //           ),
                  //           // const SizedBox(
                  //           //   width: 10,
                  //           // ),
                  //           GestureDetector(
                  //             onTap: () {
                  //               Navigator.of(context).pushNamed(register);
                  //             },
                  //             child: Text(
                  //               'Sign In',
                  //               style: TextStyle(
                  //                   color: colorPrimary,
                  //                   fontSize: 16.sp,
                  //                   fontWeight: FontWeight.w400),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
