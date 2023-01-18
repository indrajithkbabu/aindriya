import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
    bool hide = false;
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
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
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
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Container(
                  width: double.infinity,
                  height: _height * .32,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      Container(
                        height: _height * .18,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.0, right: 10, top: 30),
                                  child: Text("Invoice Amount of",
                                      style: TextStyle(
                                        fontSize: 18,
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30.0, right: 10, top: 10),
                                  child: Container(
                                    height: _height * .09,
                                    width: _width * .35,
                                    decoration: BoxDecoration(
                                        color: Colors.white54,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                        child: Text(
                                      "1850 /-",
                                      style: TextStyle(
                                          fontSize: 35,
                                          color: Colors.blue[900],
                                          fontWeight: FontWeight.w600),
                                    )),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8),
                              child: VerticalDivider(
                                color: Colors.white54,
                                thickness: 1,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.0, right: 10, top: 30),
                                  child: Text("Invoice Number",
                                      style: TextStyle(
                                        fontSize: 18,
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.0, right: 10, top: 6),
                                  child: Text("487555555",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.0, right: 10, top: 8),
                                  child: Text("Invoice Date",
                                      style: TextStyle(
                                        fontSize: 18,
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.0, right: 10, top: 6),
                                  child: Text("26 Dec, 2022",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          right: 10,
                        ),
                        child: Divider(
                          color: Colors.white54,
                          thickness: 1,
                        ),
                      ),
                      Container(
                        height: _height * .12,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 36.0, right: 10, top: 5),
                                  child: Text("Requested to",
                                      style: TextStyle(
                                        fontSize: 18,
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: _height * .015,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 32.0, right: 10),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 27,
                                    backgroundImage: AssetImage(
                                        "assets/images/MyG_Company_Logo.jpg"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18),
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
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.blue[900],
                                      size: 35,
                                    ),
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
              SizedBox(
                height: _height * .01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: _height * .14,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 36.0, right: 10, top: 5),
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
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20, top: 10),
                child: Divider(
                  color: Colors.white54,
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: _height * .66,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10.0, right: 10, top: 5, bottom: 10),
                        child: Text("Invoice copy",
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ),
                      Image.asset("assets/images/image 3.png")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
