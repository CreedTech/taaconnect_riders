import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/core.dart';
import '../../../../widgets/custom_success_screen.dart';

class VehicleDocumentation extends StatefulWidget {
  const VehicleDocumentation({super.key});

  @override
  State<VehicleDocumentation> createState() => _VehicleDocumentationState();
}

class _VehicleDocumentationState extends State<VehicleDocumentation> {
  @override
  Widget build(BuildContext context) {
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
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 35,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/logo_single.png',
                          height: 120.h,
                        ),
                        Text(
                          'Vehicle Documentation',
                          style: GoogleFonts.nunito(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 32.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: Text(
                            'We’re legally required to ask for some documents to register you as a rider. Document scan and quality photos are accepted',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Drivers license',
                              style: GoogleFonts.nunito(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Required',
                              style: GoogleFonts.nunito(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                        Text(
                          'Please provide a clear drivers license showing the license number, your name and DOB',
                          style: GoogleFonts.nunito(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: colorGray),
                        ),
                        SizedBox(
                          height: 24.5.h,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(150, 50),
                            backgroundColor: colorLightGray,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                100,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Upload file',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              color: colorsBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Drivers profile photo',
                              style: GoogleFonts.nunito(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Required',
                              style: GoogleFonts.nunito(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                        Text(
                          'Please provide a clear drivers portrait picture of yourself. It should show your full face with eyes open',
                          style: GoogleFonts.nunito(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: colorGray),
                        ),
                        SizedBox(
                          height: 24.5.h,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(150, 50),
                            backgroundColor: colorLightGray,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                100,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Upload file',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              color: colorsBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Exterior photo of your vehicle',
                              style: GoogleFonts.nunito(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Required',
                              style: GoogleFonts.nunito(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                        Text(
                          'Please provide a clear exterior photo that shows the plate number',
                          style: GoogleFonts.nunito(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: colorGray),
                        ),
                        SizedBox(
                          height: 24.5.h,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(150, 50),
                            backgroundColor: colorLightGray,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                100,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Upload file',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              color: colorsBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'License certificate',
                              style: GoogleFonts.nunito(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Required',
                              style: GoogleFonts.nunito(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24.5.h,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(150, 50),
                            backgroundColor: colorLightGray,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                100,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Upload file',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              color: colorsBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 112.h,
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
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CustomSuccessScreen(
                                    title: 'Successful',
                                    info:
                                        'More than just a simple package delivery application now has more benefits',
                                    route: home,
                                    buttonTitle: 'Home',
                                  ),
                                ),
                                (route) => false);
                          },
                          child: const Text(
                            'Verify',
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
      ),
    );
  }
}
