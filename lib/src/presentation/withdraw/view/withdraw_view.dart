import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taaconnect_riders/src/widgets/custom_success_screen.dart';

import '../../../core/core.dart';
import '../../../widgets/custom_text_field.dart';

class WithdrawView extends StatefulWidget {
  const WithdrawView({super.key});

  @override
  State<WithdrawView> createState() => _WithdrawViewState();
}

class _WithdrawViewState extends State<WithdrawView> {
  bool isChecking = false;
  final TextEditingController _bankController = TextEditingController();
  final TextEditingController _accountNumberController =
      TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final withdrawKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _bankController.dispose();
    _accountNumberController.dispose();
    _amountController.dispose();
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
        title: Padding(
          padding: EdgeInsets.all(12.sp),
          child: Text(
            'Withdraw',
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w500,
              fontSize: 22.sp,
              color: colorsBlack,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.h),
            child: Icon(
              Icons.info_outline,
              color: colorGray,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 32.h),
          child: Stack(
            children: [
              Column(
                children: [
                  Form(
                    key: withdrawKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          prefixIcon: Image.asset(
                            'assets/icons/bank.png',
                            scale: 4,
                          ),
                          // labelText: 'Email Address',
                          hintText: '',
                          controller: _bankController,
                          legend: 'Select Bank',

                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter a bank Name';
                            }
                            return null;
                          },
                        ),
                        CustomTextField(
                          // prefixIcon: Image.asset(
                          //   'assets/icons/bank.png',
                          //   scale: 4,
                          // ),
                          // labelText: 'Email Address',
                          hintText: '',
                          controller: _accountNumberController,
                          legend: 'Enter Account Number',
                          maxlength: 10,
                          onChanged: (val) {
                            if (_accountNumberController.text.trim().length ==
                                10) {
                              setState(() {
                                isChecking = true;
                              });
                            } else {
                              setState(() {
                                isChecking = false;
                              });
                            }
                            // isChecking = false;
                          },
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Account Number cannot be empty';
                            }
                            if (value.length < 10) {
                              return 'Account Number is invalid';
                            }
                            if (int.tryParse(value) == null) {
                              return 'enter valid Account Number';
                            }
                            return null;
                          },
                        ),
                        if (isChecking)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Yinka Williams',
                                style: GoogleFonts.nunito(
                                  color: Color(0xff3BB54A),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Balance ',
                                  style: GoogleFonts.nunito(
                                    // color: Color(0xff3BB54A),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'NGN 8,350.00',
                                  style: GoogleFonts.nunito(
                                    // color: Color(0xff3BB54A),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        CustomTextField(
                          icon: Padding(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            child: Text(
                              'min. 1',
                              style: GoogleFonts.nunito(
                                color: colorGray,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          // labelText: 'Email Address',
                          hintText: '',
                          controller: _amountController,
                          legend: 'Enter amount (NGN)',

                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter a valid Amount';
                            }
                            return null;
                          },
                        ),
                        // SizedBox(
                        //   height: 120,
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CustomSuccessScreen(
                          info:
                              'Your withdrawal is been processed and the recipient bank will be credited shortly ',
                          route: home,
                          title: 'Successful',
                          buttonTitle: 'Done',
                        ),
                      ),
                      (route) => false,
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
                    height: 48,
                    // padding: EdgeInsets.symmetric(vertical: 15.h),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: colorPrimary,
                      borderRadius: BorderRadius.all(Radius.circular(88.sp)),
                    ),
                    child: Text(
                      'Confirm',
                      style: TextStyle(fontSize: 14.sp, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
