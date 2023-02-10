import 'package:dujo_demo_web/App_loginUsers/login_users.dart';
import 'package:dujo_demo_web/faculties/faculties_screen.dart';
import 'package:dujo_demo_web/home/view/pages/Login/Admin/recorded_section/recorded_sec_screen.dart';
import 'package:dujo_demo_web/liveSection/live_section_selection_screen.dart';
import 'package:dujo_demo_web/recorded_section/reco_section_screen.dart';
import 'package:dujo_demo_web/study_material_section/category/S_m_category_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../widgets/button_Container.dart';
import '../../../colors/colors.dart';
import '../../../constants/const.dart';
import 'faculty/faculty_sec_screen.dart';
import 'live_section/live_sec_screen.dart';

class AdminPanelScreen extends StatefulWidget {
  const AdminPanelScreen({super.key});

  @override
  State<AdminPanelScreen> createState() => _AdminPanelScreenState();
}

class _AdminPanelScreenState extends State<AdminPanelScreen> {
  // var screenSize = MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: ButtonContainerWidget(
                    colorindex: 1,
                    curving: 30,
                    width: screenSize.width * 0.2,
                    height: screenSize.height * 0.949,
                    // ignore: prefer_const_constructors
                    child: Center(),
                  ),
                ),
              ),
              sizedBoxW20,
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          child: SizedBox(
                            height: screenSize.height * 0.3,
                            width: screenSize.width * 0.18,
                            child: Column(
                              children: [
                                ButtonContainerWidget(
                                    colorindex: 1,
                                    curving: 30,
                                    height: screenSize.height * 0.265,
                                    width: screenSize.width * 0.18,
                                    child: Center(
                                      child: Image.asset(
                                          "assets/Images/onlineprofessor.png",
                                          width: screenSize.width * 0.18,
                                          height: screenSize.height * 0.18),
                                    )),
                                sizedBoxH10,
                                Text("Recorded Courses",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: cBlack,
                                    )),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RecordedSectionListScreen()),
                            );
                          },
                        ),
                        sizedBoxW20,
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const LiveSectionSelectionScreen()),
                            );
                          },
                          child: SizedBox(
                            height: screenSize.height * 0.3,
                            width: screenSize.width * 0.18,
                            child: Column(
                              children: [
                                ButtonContainerWidget(
                                  colorindex: 1,
                                  curving: 30,
                                  height: screenSize.height * 0.265,
                                  width: screenSize.width * 0.18,
                                  child: const Icon(
                                    Icons.computer_rounded,
                                    size: 140,
                                    color: cWhite,
                                  ),
                                ),
                                sizedBoxH10,
                                Text(
                                  "Live Courses",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: cBlack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        sizedBoxW20,
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: screenSize.height * 0.300,
                            width: screenSize.width * 0.18,
                            child: Column(
                              children: [
                                ButtonContainerWidget(
                                  colorindex: 1,
                                  curving: 30,
                                  height: screenSize.height * 0.265,
                                  width: screenSize.width * 0.18,
                                  child: Image.asset("assets/Images/hybrid.png",
                                      width: screenSize.width * 0.118,
                                      height: screenSize.height * 0.118),
                                ),
                                sizedBoxH10,
                                Text(
                                  "Hybrid Courses",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: cBlack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        sizedBoxW20,
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SmCategoryScreen()),
                            );
                          },
                          child: SizedBox(
                            height: screenSize.height * 0.300,
                            width: screenSize.width * 0.18,
                            child: Column(
                              children: [
                                ButtonContainerWidget(
                                  colorindex: 1,
                                  curving: 30,
                                  height: screenSize.height * 0.265,
                                  width: screenSize.width * 0.18,
                                  child: const Icon(
                                    Icons.auto_stories,
                                    size: 145,
                                    color: cWhite,
                                  ),
                                ),
                                sizedBoxH10,
                                Text(
                                  "Study Materials",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: cBlack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    sizedBoxH30,
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: screenSize.height * 0.300,
                            width: screenSize.width * 0.18,
                            child: Column(
                              children: [
                                ButtonContainerWidget(
                                  colorindex: 1,
                                  curving: 30,
                                  height: screenSize.height * 0.265,
                                  width: screenSize.width * 0.18,
                                  child: const Icon(
                                    Icons.auto_stories,
                                    size: 145,
                                    color: cWhite,
                                  ),
                                ),
                                sizedBoxH10,
                                Text(
                                  "Mock Tests",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: cBlack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        sizedBoxW20,
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FacultyScreen()),
                            );
                          },
                          child: SizedBox(
                            height: screenSize.height * 0.300,
                            width: screenSize.width * 0.18,
                            child: Column(
                              children: [
                                ButtonContainerWidget(
                                  colorindex: 1,
                                  curving: 30,
                                  height: screenSize.height * 0.265,
                                  width: screenSize.width * 0.18,
                                  child: const Icon(
                                    Icons.group_sharp,
                                    size: 150,
                                    color: cWhite,
                                  ),
                                ),
                                sizedBoxH10,
                                Text(
                                  "Faculties",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: cBlack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        sizedBoxW20,
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllAppLoginUSERS()),
                            );
                          },
                          child: SizedBox(
                            height: screenSize.height * 0.300,
                            width: screenSize.width * 0.18,
                            child: Column(
                              children: [
                                ButtonContainerWidget(
                                  colorindex: 1,
                                  curving: 30,
                                  height: screenSize.height * 0.265,
                                  width: screenSize.width * 0.18,
                                  child: const Icon(
                                    Icons.notifications,
                                    size: 150,
                                    color: cWhite,
                                  ),
                                ),
                                sizedBoxH10,
                                Text(
                                  "App Login Users",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: cBlack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        sizedBoxW20,
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: screenSize.height * 0.300,
                            width: screenSize.width * 0.18,
                            child: Column(
                              children: [
                                ButtonContainerWidget(
                                  colorindex: 1,
                                  curving: 30,
                                  height: screenSize.height * 0.265,
                                  width: screenSize.width * 0.18,
                                  child: const Icon(
                                    Icons.event_available_outlined,
                                    size: 150,
                                    color: cWhite,
                                  ),
                                ),
                                sizedBoxH10,
                                Text(
                                  "Events",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: cBlack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    sizedBoxH30,
                    Padding(
                      padding: const EdgeInsets.only(right: 880),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                              height: screenSize.height * 0.300,
                              width: screenSize.width * 0.18,
                              child: Column(
                                children: [
                                  ButtonContainerWidget(
                                    colorindex: 1,
                                    curving: 30,
                                    height: screenSize.height * 0.265,
                                    width: screenSize.width * 0.18,
                                    child: const Icon(
                                      Icons.ads_click_sharp,
                                      size: 150,
                                      color: cWhite,
                                    ),
                                  ),
                                  sizedBoxH10,
                                  Text(
                                    "Ads",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: cBlack,
                                    ),
                                  ),
                                ],
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
        ],
      ),
    );
  }
}
