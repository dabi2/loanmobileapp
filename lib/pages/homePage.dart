import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loanmobileapp/color/colors.dart';
import 'package:loanmobileapp/pages/borrowerEligibilityPage.dart';
import 'package:loanmobileapp/pages/drawer.dart';
import 'package:loanmobileapp/pages/interestRatePage.dart';
import 'package:loanmobileapp/pages/notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.body,
      appBar: AppBar(
        backgroundColor: MainColors.appbar,
        title: Center(
            child: Text(
          "Home",
          style: GoogleFonts.inter(fontSize: 20, color: Colors.white),
        )),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationsPage(),
                  ));
            },
            icon: const Icon(Icons.notifications),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.language_rounded),
            color: Colors.white,
          )
        ],
      ),
      drawer: Drawerclass().buildDrawer(context),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: CircleAvatar(
                  radius: 40,
                  child: Icon(
                    Icons.person,
                    size: 40,
                  ),
                ),
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: "Welcome back ",
                    style: GoogleFonts.lato(fontSize: 20, color: Colors.grey)),
                // TextSpan(text: "$userEmail !!",style: GoogleFonts.lato(fontSize:30,fontWeight:FontWeight.normal,color:Colors.blueGrey)),
              ])),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              border: const Border(top: BorderSide.none),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: MainColors.containercolor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text("Get Loan Upto \u20B950,0000",
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(
                          text:
                              "complete your Profile and work details and get best loan offers",
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Colors.white,
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.monetization_on_rounded,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Apply Loan",
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(MainColors.lightgreen)),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              border: const Border(top: BorderSide.none),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: MainColors.containercolor,
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/coins.png",
                  height: 100,
                  width: 100,
                ),
                Column(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Check Your",
                            style: GoogleFonts.audiowide(
                              fontSize: 20,
                              color: Colors.white,
                            ))),
                    RichText(
                        text: TextSpan(
                            text: "Credit Score",
                            style: GoogleFonts.audiowide(
                              fontSize: 16,
                              color: Colors.white,
                            ))),
                  ],
                ),
                ElevatedButton.icon(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(MainColors.lightgreen),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)))),
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    label: Text("Check Your Sore",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.white,
                        ))),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                   decoration: BoxDecoration(
              border: const Border(top: BorderSide.none),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: MainColors.containercolor,
            ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/coins.png",
                                        height: 100,
                                        width: 100,
                                      ),
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            const WidgetSpan(child: Icon(Icons.access_time_filled_sharp,size: 20,color: Colors.grey,)),
                                            TextSpan(text: 'Eligibility',
                                              style: GoogleFonts.lato(
                                                fontSize: 16,
                                                color: Colors.black87,
                                              )),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ElevatedButton.icon(
                                            onPressed: () {
                                              Navigator.push(context,MaterialPageRoute(builder: (context) => borrowerEligibilityPage(),));
                                            },
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        MainColors.lightgreen),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                5.0)))),
                                            icon: const Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white,
                                            ),
                                            label: Text("Know More1",
                                                style: GoogleFonts.lato(
                                                  fontSize: 16,
                                                  fontWeight:FontWeight.bold,
                                                  color: Colors.white,
                                                ))),
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/coins.png",
                                        height: 100,
                                        width: 100,
                                      ),
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            const WidgetSpan(child: Icon(Icons.percent_rounded,size: 20,color: Colors.grey,)),
                                            TextSpan(text: 'Interest Rate',
                                              style: GoogleFonts.lato(
                                                fontSize: 16,
                                                color: Colors.black87,
                                              )),
                                          ],
                                        ),
                                      ),
                                     const SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ElevatedButton.icon(
                                            onPressed: () {
                                              Navigator.push(
                                                context, MaterialPageRoute(builder: (context) => interestRatePage(),)
                                              );
                                            },
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        MainColors.lightgreen),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                5.0)))),
                                            icon: const Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white,
                                            ),
                                            label: Text("Know More2",
                                                style: GoogleFonts.lato(
                                                  fontSize: 16,
                                                  fontWeight:FontWeight.bold,
                                                  color: Colors.white,
                                                ))),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              )
        ],
      ),
    );
  }
}
