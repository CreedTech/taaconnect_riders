import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../../../widgets/custom_text_field.dart';
import '../../auth/login/view/forgot_password_view.dart';
import '../../auth/login/view/reset_password_view.dart';

class MyInformationView extends StatefulWidget {
  const MyInformationView({super.key});

  @override
  State<MyInformationView> createState() => _MyInformationViewState();
}

class _MyInformationViewState extends State<MyInformationView> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final infoKey = GlobalKey<FormState>();
  String? selectedGender;

  @override
  void dispose() {
    _fullNameController.dispose();
    _mailController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final gender = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField(
          style: GoogleFonts.nunito(
            fontSize: 14.sp,
            color: colorsBlack,
          ),
          items: ['Male', 'Female', 'Other']
              .map((value) => DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  ))
              .toList(),
          value: selectedGender,
          onChanged: (String? newValue) {
            setState(() {
              selectedGender = newValue!;
              // genderValue = selectedGender == 'Male' ? 1 : 2;
            });
            print(selectedGender);
          },
          decoration: InputDecoration(
            labelText: 'Gender',
            labelStyle: GoogleFonts.nunito(color: colorGray),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.sp),
              borderSide: const BorderSide(color: Color(0xffA4A5A6)),
            ),
            // enabledBorder: Color(value),
            // prefixIcon: prefixIcon,
            hintText: 'Gender',
            errorStyle: GoogleFonts.nunito(
                fontSize: 12.sp, fontWeight: FontWeight.w600),
            hintStyle: GoogleFonts.nunito(color: textGray),
            // errorText: errorText,
            // suffixIcon: icon,
            filled: false,
            // fillColor: colorGray,
            contentPadding: EdgeInsets.all(14.sp),
          ),
          // maxLines: 1,
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
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
        title: Image.asset(
          'assets/images/logo_single.png',
          height: 80.h,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(top: 10.h, left: 16.w, right: 16.w, bottom: 32.h),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Personal information',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Form(
                    key: infoKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          // labelText: 'Email Address',
                          hintText: '',
                          controller: _fullNameController,
                          legend: 'Full Name',

                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter Full Name';
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
                          controller: _mailController,
                          legend: 'Enter your email',
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Input a valid email address';
                            }
                            if (!value.contains('@')) {
                              return 'Include @ symbol in your email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 24.h),
                        gender,
                        // SizedBox(height: 24.h),
                        CustomTextField(
                          // labelText: 'Email Address',
                          hintText: '',
                          controller: _phoneNumberController,
                          legend: 'Phone Number',

                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Phone Number cannot be empty';
                            }
                            if (value.length < 11) {
                              return 'Phone Number is invalid';
                            }
                            if (int.tryParse(value) == null) {
                              return 'enter valid Phone Number';
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
                    Navigator.pop(context);
                    // Navigator.pushAndRemoveUntil(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => CustomSuccessScreen(
                    //       info:
                    //           'Your withdrawal is been processed and the recipient bank will be credited shortly ',
                    //       route: home,
                    //       title: 'Successful',
                    //       buttonTitle: 'Done',
                    //     ),
                    //   ),
                    //   (route) => false,
                    // );
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
                      'Save Changes',
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
