import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../../../widgets/custom_text_field.dart';

class VehicleInformationView extends StatefulWidget {
  const VehicleInformationView({super.key});

  @override
  State<VehicleInformationView> createState() => _VehicleInformationViewState();
}

class _VehicleInformationViewState extends State<VehicleInformationView> {
  final TextEditingController _vehicleManufacturerController =
      TextEditingController();
  final TextEditingController _modelYearController = TextEditingController();
  final TextEditingController _licensePlateController = TextEditingController();
  final TextEditingController _vehicleColorController = TextEditingController();
  final TextEditingController _driverLiscenseNumberController =
      TextEditingController();
  final vehicleFormKey = GlobalKey<FormState>();
  String? vehicleType;

  @override
  void dispose() {
    _vehicleManufacturerController.dispose();
    _modelYearController.dispose();
    _licensePlateController.dispose();
    _vehicleColorController.dispose();
    _driverLiscenseNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
          child: SingleChildScrollView(
            child: Stack(
              children: [
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
                    Form(
                      key: vehicleFormKey,
                      child: Column(
                        children: [
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(88.sp)),
                                ),
                                child: Text(
                                  'Save Changes',
                                  style: TextStyle(
                                      fontSize: 14.sp, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
