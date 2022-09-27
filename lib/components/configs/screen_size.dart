import 'package:flutter_screenutil/flutter_screenutil.dart';


///gets the proportionate height in relation to the screen height
double getProportionateScreenHeight(double inputHeight) {
  double height = inputHeight.h;
  //double screenHeight = SizeConfig.screenHeight;
  return height;
}

double getProportionateScreenWidth(double inputWidth) {
  double width = inputWidth.w;
//  double screenWidth = SizeConfig.screenWidth;
  return width;
}

getFontSize(double inputSize) {
  double fontSize = inputSize.sp;
  return fontSize;
}


//
// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:my_portfolio_web/folders/screens/about.dart';
// import 'package:my_portfolio_web/folders/utils/constants.dart';
// import 'package:my_portfolio_web/folders/utils/screen_size.dart';
// import 'package:web_smooth_scroll/web_smooth_scroll.dart';
//
// class Contact extends StatefulWidget {
//   const Contact({Key? key}) : super(key: key);
//
//   static String routName = "/contact";
//
//
//   @override
//   State<Contact> createState() => _ContactState();
// }
//
// class _ContactState extends State<Contact> {
//   //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   late ScrollController _scrollController;
//   @override
//   void initState() {
//     // TODO: implement initState
//     _scrollController = ScrollController();
//     super.initState();
//   }
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height * 1;
//     double w = MediaQuery.of(context).size.width * 1;
//     return Scaffold(
//       body: WebSmoothScroll(
//         controller: _scrollController,
//         // scrollOffset: 100,
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           physics: const NeverScrollableScrollPhysics(),
//           child: Container(
//             height: h,
//             width: w,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 // fit: BoxFit.cover,
//                   image: AssetImage(
//                       "images/bg.jpg"
//                   ),
//                   fit: BoxFit.cover
//               ),
//             ),
//             child: Padding(
//               padding: padding.padding,
//               child: Column(
//                 // mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const AutoSizeText(
//                     "Get In Touch",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 30,
//                     ),
//                   ),
//                   const SizedBox(height: 50,),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const FirstRow(),
//                       const SizedBox(width: 60,),
//                       SecondRow(),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
// class FirstRow extends StatelessWidget {
//   const FirstRow({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     return Container(
//       color: kGrey,
//       width: w/3.5,
//       height:300,
//       child: ListView(
//         children: [
//           listTile("My Address", "No.163 Olowo Castle", context),
//           listTile("Email me", "basharsherifdeen@gmail.com", context),
//           listTile("Call Me", "+23490 2526 2315", context),
//         ],
//       ),
//     );
//   }
//
//   listTile(String title, String subtitle, BuildContext context){
//     // double w = MediaQuery.of(context).size.width;
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ListTile(
//         title: Text(
//           title,
//           style: const TextStyle(
//             color: Colors.white,
//
//           ),
//         ),
//         subtitle: Text(
//           subtitle,
//           style: const TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class SecondRow extends StatelessWidget {
//   SecondRow({Key? key}) : super(key: key);
//
//   TextEditingController name = TextEditingController();
//   TextEditingController email = TextEditingController();
//   TextEditingController subject = TextEditingController();
//   TextEditingController message = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     return SizedBox(
//       width: w/2.45,
//       // height: 600,
//       child: Column(
//         children:  [
//           AutoSizeText(
//             "You can contact me directly by\n"
//                 "sending me a direct message either\n"
//                 "on WhatsApp or email at\n"
//                 "anytime/anywhere",
//             maxLines: 4,
//             style: TextStyle(
//                 color: Colors.white,
//                 fontSize: getFontSize(16)
//             ),
//           ),
//           const SizedBox(height: 15,),
//           field( name, 'FULL NAME','name', 50),
//
//           const SizedBox(height: 15,),
//           field( email, 'EMAIL', 'email address', 50),
//           const SizedBox(height: 15,),
//           field( subject, 'SUBJECT', 'subject', 50),
//           const SizedBox(height: 15,),
//           field( message, 'MESSAGE', 'message', 70),
//           // field(controller, text, hint)
//           const SizedBox(height: 40,),
//
//           TextButton(onPressed: (){},
//             style: TextButton.styleFrom(
//               backgroundColor: Colors.blue,
//               fixedSize: const Size(140, 45),
//             ),
//             child: const Text(
//               'Send message',
//               style: TextStyle(
//                 color: Colors.white,
//                 // fontSize: 25
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // textField(String text, TextEditingController controller){
//   //   return Padding(
//   //     padding: const EdgeInsets.all(8.0),
//   //     child: Column(
//   //       children: [
//   //         Text(
//   //           text,
//   //           style: const TextStyle(
//   //             color: Colors.white
//   //           ),
//   //         ),
//   //         const SizedBox(height: 12,),
//   //         TextFormField(
//   //           controller: controller,
//   //           // decoration: ,
//   //
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }
//
//   field(TextEditingController controller, String text, String hint, double height){
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 20),
//           child: Align(
//             alignment: Alignment.topLeft,
//             child: Text(
//               text,
//               style: const TextStyle(
//                   color: Colors.white
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(height: 10,),
//         Container(
//           height: height,
//           margin: const EdgeInsets.only(left: 30, right: 30),
//           padding: const EdgeInsets.only(left: 20),
//           decoration: BoxDecoration(
//               color: const Color(0XFFdae1eb),
//               //color: Color.fromRGBO(241, 241, 241, 1),
//               borderRadius: BorderRadius.circular(16),
//               boxShadow: const [
//                 BoxShadow(
//                   color: Color.fromRGBO(0, 0, 0, 0.1),
//                   blurRadius: 6, // soften the shadow
//                   spreadRadius: 3, //end the shadow
//                   offset: Offset(
//                     6.0, // Move to right 10  horizontally
//                     2.0, // Move to bottom 10 Vertically
//                   ),
//                 ),
//                 BoxShadow(
//                   color: Color.fromRGBO(255, 255, 255, 0.5),
//                   blurRadius: 6, // soften the shadow
//                   spreadRadius: 3, //end the shadow
//                   offset: Offset(
//                     -6.0, // Move to right 10  horizontally
//                     -2.0, // Move to bottom 10 Vertically
//                   ),
//                 ),
//               ]),
//           child: Column(
//             children: [
//               // const SizedBox(height: 30,),
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: hint,
//                   border: InputBorder.none,
//                 ),
//                 // keyboardType: TextInputType.emailAddress,
//                 obscureText: false,
//                 controller: controller,
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }




/*


import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_web/folders/utils/constants.dart';
import 'package:my_portfolio_web/folders/utils/screen_size.dart';

import '../data/strings_data.dart';



class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);
  static String routeName = "/services";

  @override
  Widget build(BuildContext context) {
    // double h = MediaQuery.of(context).size.height * 2;
    double w = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: container(context, Padding(
        padding: padding.padding,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: AutoSizeText(
                  "Services",
                  style: TextStyle(
                      fontSize: getFontSize(60),
                      color: kBlue,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),

              const SizedBox(height: 40,),
              const CarouselBar(),
              const SizedBox(height: 30,),
              Column(
                children: [
                  CarouselSlider(
                    items: [
                      Content(title: "Web&ApDesign", body: web_app, image: "images/web-design.jpg"),
                      Content(title: "Web Development", body: web, image: "images/web-development.jpg"),
                      Content(title: "Mobile Development", body: mobile, image: "images/mobile-development.jpg"),
                    ],
                    options: CarouselOptions(
                      height: getProportionateScreenHeight(600),
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 2.0,

                    ),
                  ),
                ],
              ),
              // Content(title: "Web Design", body: body, image: "images/web-design.jpg")
            ],
          ),
        ),
      ),
      ),
    );
  }
}


class CarouselBar extends StatefulWidget {
  const CarouselBar({Key? key}) : super(key: key);

  @override
  _CarouselBarState createState() => _CarouselBarState();
}

class _CarouselBarState extends State<CarouselBar> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width *1;
    return Container(
      // width: w * 0.8,
      color: kWhiteText,
      height: getProportionateScreenHeight(221),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        // child: sliderContent("title", body, "images/web-design.jpg"),
        child: CarouselSlider(
          items: [
            textWithIcon("Web&App Design", Icons.ac_unit),
            textWithIcon("Web Development", Icons.ac_unit),
            textWithIcon("Mobile Development", Icons.ac_unit)
          ],
          options: CarouselOptions(
            height: getProportionateScreenHeight(600),
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16/9,

          ),
        ),
      ),
    );
  }

  textWithIcon(String text, IconData icon){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
        ),
        const SizedBox(),
        AutoSizeText(
          text,
          maxLines: 1,
          minFontSize: 10,
          style:  TextStyle(
            fontSize: getFontSize(20),
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class Content extends StatelessWidget {
  Content({Key? key, required this.title, required this.body, required this.image}) : super(key: key);

  String title; String body; String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: AutoSizeText(
              title,
              maxLines: 1,
              style: TextStyle(
                color: kBlue,
                fontSize: 60,
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: getProportionateScreenWidth(400),
                  height: getProportionateScreenHeight(350),
                  child: AutoSizeText(
                    body,
                    maxLines: 10,
                    // minFontSize: 10,
                    style: TextStyle(
                      color: kWhiteText,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  width: getProportionateScreenWidth(550),
                  height: getProportionateScreenHeight(350),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      // fit: BoxFit.cover,
                        image: AssetImage(
                            image
                        ),
                        fit: BoxFit.cover
                    ),
                  ),
                  // child: Image(image: AssetImage(image)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

*/
