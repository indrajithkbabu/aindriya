import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class ScreenInvoiceDetails extends StatefulWidget {
  const ScreenInvoiceDetails({Key? key}) : super(key: key);

  @override
  State<ScreenInvoiceDetails> createState() => _ScreenInvoiceDetailsState();
}

class _ScreenInvoiceDetailsState extends State<ScreenInvoiceDetails> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    
     bool isSmall = _height < 600;
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
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.blue[900],
        ),
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.topLeft,
          colors: [
            Color(0xFFb3c3f2),
            Color(0xFFeddad1),
          ],
        )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 6.w, right: 5.w, bottom: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Invoice Approval Request",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "28 Dec 2022,20:30",
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h, right: 2.h),
                child: Container(
                  height: 20.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 1.5.h),
                              child: Text("Invoice Amount of",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                            ),
                            Container(
                              height: _height * .09,
                              width: _width * .35,
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                  child: Text(
                                "1850 /-",
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.blue[900],
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8, bottom: 8),
                        child: VerticalDivider(
                          color: Colors.white54,
                          thickness: 1,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 9.h,
                            width: 40.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Invoice Number",
                                    style: TextStyle(
                                      fontSize: 18,
                                    )),
                                SizedBox(
                                  height: .5.h,
                                ),
                                Text("487555555",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: .5.h,
                          ),
                          Container(
                            height: 9.h,
                            width: 40.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Invoice Date",
                                    style: TextStyle(
                                      fontSize: 18,
                                    )),
                                SizedBox(
                                  height: .5.h,
                                ),
                                Text("26 Dec, 2022",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ), Padding(
                padding:  EdgeInsets.only(left: 2.h,right: 2.h),
                child: Divider(
                            color: Colors.white54,
                            thickness: 1,
                          ),
              ),
               Padding(
                padding: EdgeInsets.only(left: 2.h, right: 2.h),
                child: Container(
                  height: 15.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 1.5.h,left: 2.h),
                              child: Text("Requested to",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                            ),
                            
                            Padding(
                              padding:  EdgeInsets.only(left: 2.h),
                              child: Row(
                                children: [
                                   CircleAvatar(
                                      radius: 27,
                                      backgroundImage: AssetImage(
                                          "assets/images/MyG_Company_Logo.jpg"),
                                    ),
                                      Padding(
                                      padding:  EdgeInsets.only(left: 2.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text("MyG Kakkanad",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: _height * .005,
                                          ),
                                          const Text("+91 7539517753",
                                              style: TextStyle(
                                                fontSize: 18,
                                              )),
                                          
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20.w,),
                                         Icon(
                                           Icons.call,
                                           color: Colors.blue[900],
                                           size: 35,
                                         )

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                     
                     
                    ],
                  ),
                ),
              ),
              SizedBox(height: 1.h,),

  Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height:20.h,
                  // _height * .14,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    
                    children: [
                      Row(
                        children:  [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 36.0, right: 10, top: 3.h),
                            child: Text("Request status",
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: _height * .015,
                      ),
                      Flexible(
                        child: Container(

                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10.0,
                                right: 10,
                              ),
                              child: Theme(
                                data: ThemeData(canvasColor: Colors.white10),
                                child: Stepper(
                                  elevation: 0,
                                  type: StepperType.horizontal,
                                  steps: [
                                    Step(
                                        title: Text("Requested"),
                                        content: Text(""),
                                        isActive: true,
                                        state: StepState.complete),
                                    Step(
                                        title: Text("Pending"),
                                        content: Text(""),
                                        isActive: true,
                                        state: StepState.complete),
                                    Step(
                                        title: Text("Approved"),
                                        content: Text(""),
                                        isActive: true,
                                        state: StepState.indexed),
                                  ],
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 2.h,right: 2.h),
                child: Divider(
                            color: Colors.white54,
                            thickness: 1,
                          ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 100.h,
                  // _height * .14,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    
                    children: [
                      Row(
                        children:  [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 36.0, right: 10, top: 1.h),
                            child: Text("Invoice copy",
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: .01.h,
                      ),
                      Image.asset("assets/images/image 3.png",fit: BoxFit.fill,)
                     
                    ],
                  ),

                ),
              ),
              
              
              
            ],
          ),
        ),
        
            
  
      )),
    );
  }
}
