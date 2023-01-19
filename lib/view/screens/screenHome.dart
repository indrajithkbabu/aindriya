import 'package:aindriya/view/screens/screenAddBill.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

// class ScreenHome extends StatelessWidget {
//   const ScreenHome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var _height = MediaQuery.of(context).size.height;
//  var _width = MediaQuery.of(context).size.width;
//  bool isSmall=_width<600;
//     return Scaffold(
//         appBar: AppBar(
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//               gradient: const LinearGradient(
//                   begin: Alignment.topRight,
//                   end: Alignment.topLeft,
//                   colors: [
//                 Color(0xFFb3c3f2),
//                 Color(0xFFeddad1),
//               ])),
//         ),
//         elevation: 0,
//         leading: IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.arrow_back_ios),
//           color: Colors.blue[900],
//         ),
//       ),body: isSmall? ,

//     );
//   }
// }
class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    bool isSmall = _width < 600;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [
                  Color(0xFFb3c3f2),
                  Color(0xFFeddad1),
                ])),
          ),
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.blue[900],
          ),
        ),
        body: isSmall
            ? SafeArea(
                child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.topLeft,
                  colors: [
                    Color(0xFFb3c3f2),
                    Color(0xFFeddad1),
                  ],
                )),
                child: Padding(
                  padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 1.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Enter invoice number",
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w600,
                              )),
                          SizedBox(
                            height: 3.h,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Eg :45574855",
                              contentPadding:
                                  EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.h,
                              ),
                              child: Image.asset(
                                "assets/images/image 4.png",
                                width: 50.h,
                                height: 50.h,
                              ),
                            ),
                            SizedBox(
                              height: _height * .15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 5.h,
                                  width: 30.w,
                                  child: ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        onPrimary: Colors.blue[900],
                                      ),
                                      onPressed: () {},
                                      icon: Icon(Icons.arrow_back_ios_rounded),
                                      label: Text("Back")),
                                ),
                                Container(
                                  height: 5.h,
                                  width: 30.w,
                                  child: ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.blue[900],
                                      onPrimary: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ScreenAddBill()));
                                    },
                                    label:
                                        Icon(Icons.arrow_forward_ios_rounded),
                                    icon: Text("Next"),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ))
            : SafeArea(
                child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.topLeft,
                  colors: [
                    Color(0xFFb3c3f2),
                    Color(0xFFeddad1),
                  ],
                )),
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 1.h),
                      child: Center(
                        child: Container(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Enter invoice number",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.w600,
                                )),
                            SizedBox(
                              height: 3.h,
                            ),
                            SizedBox(
                              width: 50.h,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Eg :45574855",
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 10.0, 20.0, 10.0),
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5.h,
                                ),
                                child: Image.asset(
                                  "assets/images/image 4.png",
                                  width: 50.h,
                                  height: 50.h,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            SizedBox(
                              width: 50.h,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 100,
                                    child: ElevatedButton.icon(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          onPrimary: Colors.blue[900],
                                        ),
                                        onPressed: () {},
                                        icon:
                                            Icon(Icons.arrow_back_ios_rounded),
                                        label: Text("Back")),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    child: ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.blue[900],
                                        onPrimary: Colors.white,
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ScreenAddBill()));
                                      },
                                      label:
                                          Icon(Icons.arrow_forward_ios_rounded),
                                      icon: Text("Next"),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                      ),
                    ))
                  ],
                ),
              )));
  }
}
