import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taaconnect_riders/src/presentation/auth/login/view/vehicle_documentation.dart';

import '../../../../core/components/components.dart';
import '../../../../core/helpers/helpers.dart';
import '../../../../widgets/custom_success_screen.dart';
import '../../../../widgets/custom_text_field.dart';

class FinishRegistrationView extends StatefulWidget {
  const FinishRegistrationView({super.key, required this.phone_number});
  final String phone_number;

  @override
  State<FinishRegistrationView> createState() => _FinishRegistrationViewState();
}

class _FinishRegistrationViewState extends State<FinishRegistrationView> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _vehicleManufacturerController =
      TextEditingController();
  final TextEditingController _modelYearController = TextEditingController();
  final TextEditingController _licensePlateController = TextEditingController();
  final TextEditingController _vehicleColorController = TextEditingController();
  final TextEditingController _driverLiscenseNumberController =
      TextEditingController();
  bool obscureText = true;
  final registerFormKey = GlobalKey<FormState>();
  String? selectedGender;
  String? vehicleType;

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _vehicleManufacturerController.dispose();
    _modelYearController.dispose();
    _licensePlateController.dispose();
    _vehicleColorController.dispose();
    _driverLiscenseNumberController.dispose();
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

    final vehicle = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField(
          style: GoogleFonts.nunito(
            fontSize: 14.sp,
            color: colorsBlack,
          ),
          items: ['Private', 'Public', 'Other']
              .map((value) => DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  ))
              .toList(),
          value: vehicleType,
          onChanged: (String? newValue) {
            setState(() {
              vehicleType = newValue!;
              // genderValue = selectedGender == 'Male' ? 1 : 2;
            });
            print(vehicleType);
          },
          decoration: InputDecoration(
            labelText: 'Vehicle Type',
            labelStyle: GoogleFonts.nunito(color: colorGray),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.sp),
              borderSide: const BorderSide(color: Color(0xffA4A5A6)),
            ),
            // enabledBorder: Color(value),
            // prefixIcon: prefixIcon,
            hintText: 'Vehicle Type',
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
      backgroundColor: colorWhite,
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
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo_single.png',
                      height: 120.h,
                    ),
                    Text(
                      'Personal information and vehicle details',
                      style: GoogleFonts.nunito(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Form(
                      key: registerFormKey,
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Personal information',
                                  style: GoogleFonts.nunito(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              CustomTextField(
                                // prefixIcon: Icon(
                                //   Icons.person_outline,
                                //   color: colorsBlack,
                                // ),
                                legend: 'Full Name',
                                controller: _fullNameController,
                                keyboardType: TextInputType.text,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Input a valid name';
                                  }
                                  if (value.length < 2) {
                                    return 'Min. 2 characters';
                                  }
                                  return null;
                                },
                              ),
                              CustomTextField(
                                // prefixIcon: Icon(
                                //   Icons.mail_outline,
                                //   color: colorsBlack,
                                // ),
                                legend: 'Email address',
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                hintText: 'Enter your email',
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
                              SizedBox(height: 24.h),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Vehicle information',
                                  style: GoogleFonts.nunito(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(height: 24.h),
                              vehicle,
                              CustomTextField(
                                // prefixIcon: Icon(
                                //   Icons.person_outline,
                                //   color: colorsBlack,
                                // ),
                                legend: 'Vehicle Manufacturer',
                                controller: _vehicleManufacturerController,
                                keyboardType: TextInputType.text,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Input a valid Vehicle Manufacturer';
                                  }
                                  if (value.length < 2) {
                                    return 'Min. 2 characters';
                                  }
                                  return null;
                                },
                              ),
                              CustomTextField(
                                // prefixIcon: Icon(
                                //   Icons.mail_outline,
                                //   color: colorsBlack,
                                // ),
                                legend: 'Model Year',
                                controller: _modelYearController,
                                keyboardType: TextInputType.datetime,
                                hintText: 'Model Year',
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Input a valid Year';
                                  }
                                  if (value.length < 4) {
                                    return 'Must be up to 4 characters';
                                  }
                                  return null;
                                },
                              ),
                              CustomTextField(
                                // prefixIcon: Icon(
                                //   Icons.mail_outline,
                                //   color: colorsBlack,
                                // ),
                                legend: 'License Plate',
                                controller: _licensePlateController,
                                keyboardType: TextInputType.text,
                                hintText: 'License Plate',
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Input a valid License Plate';
                                  }
                                  // if (value.length < 4) {
                                  //   return 'Must be up to 4 characters';
                                  // }
                                  return null;
                                },
                              ),
                              CustomTextField(
                                // prefixIcon: Icon(
                                //   Icons.mail_outline,
                                //   color: colorsBlack,
                                // ),
                                legend: 'Vehicle Color',
                                controller: _vehicleColorController,
                                keyboardType: TextInputType.text,
                                hintText: 'Vehicle Color',
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Input a valid Vehicle Color';
                                  }
                                  // if (value.length < 4) {
                                  //   return 'Must be up to 4 characters';
                                  // }
                                  return null;
                                },
                              ),
                              CustomTextField(
                                // prefixIcon: Icon(
                                //   Icons.mail_outline,
                                //   color: colorsBlack,
                                // ),
                                legend: 'Drivers License Number',
                                controller: _driverLiscenseNumberController,
                                keyboardType: TextInputType.text,
                                hintText: 'Drivers License Number',
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Input a valid Drivers License Number';
                                  }
                                  // if (value.length < 4) {
                                  //   return 'Must be up to 4 characters';
                                  // }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 126.h,
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 0.w),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(400.w, 50.h),
                                  backgroundColor: colorPrimary,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      88,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  // Navigator.pushAndRemoveUntil(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           CustomSuccessScreen(
                                  //         title: 'Successful',
                                  //         info:
                                  //             'More than just a simple package delivery application now has more benefits',
                                  //         route: login,
                                  //         buttonTitle: 'Login',
                                  //       ),
                                  //     ),
                                  //     (route) => false);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          VehicleDocumentation(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Continue',
                                  textAlign: TextAlign.center,
                                ).normalSized(16).colors(colorWhite),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
