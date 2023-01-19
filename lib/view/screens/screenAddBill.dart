import 'package:aindriya/model/modelClass.dart';
import 'package:aindriya/view/screens/screenNotification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class ScreenAddBill extends StatelessWidget {
  ScreenAddBill({Key? key}) : super(key: key);

  List<InvoiceData> invoiceDataList = [
    InvoiceData(
      title: "MyG Kakkanad",
      subtitle: "Invoice no: 55448815",
      image: "assets/images/MyG_Company_Logo.jpg",
      amount: 1320,
      icon: Icons.access_time_filled,
      icondetails: 'Pending',
      date: '29 Dec2022',
    ),
    InvoiceData(
        title: "Allen Solly Edappally",
        subtitle: "Invoice no: 55448856",
        image: "assets/images/allenSolly.png",
        amount: 780,
        icondetails: 'Pending',
        date: '29 Dec2022',
        icon: Icons.access_time_filled),
    InvoiceData(
      title: "Nike Edappally",
      subtitle: "Invoice no: 55448817",
      image: "assets/images/nike-logo-115309645398lsn6qzriq.png",
      amount: 2300,
      icon: Icons.cancel,
      date: '29 Dec2022',
      icondetails: 'Cancelled',
    ),
    InvoiceData(
        title: "Dessi Cuppa",
        subtitle: "Invoice no: 55448818",
        image: "assets/images/desicuppa.png",
        icon: Icons.beenhere,
        date: '29 Dec2022',
        icondetails: 'Approved',
        amount: 180),
    InvoiceData(
      title: "Zudio Kakkanad",
      subtitle: "Invoice no: 55448811",
      image: "assets/images/zudioo.png",
      amount: 690,
      icon: Icons.access_time_filled,
      date: '29 Dec2022',
      icondetails: 'Pending',
    ),
    InvoiceData(
      title: "Ayur Pharma Kochi",
      subtitle: "Invoice no: 55448810",
      image: "assets/images/ayurpharma.jpg",
      amount: 320,
      icon: Icons.cancel,
      date: '29 Dec2022',
      icondetails: 'Cancelled',
    ),
    InvoiceData(
      title: "Nike Edappally",
      subtitle: "Invoice no: 55448817",
      image: "assets/images/nike-logo-115309645398lsn6qzriq.png",
      amount: 2300,
      icon: Icons.cancel,
      date: '29 Dec2022',
      icondetails: 'Cancelled',
    ),
    InvoiceData(
      title: "MyG Kakkanad",
      subtitle: "Invoice no: 55448815",
      image: "assets/images/MyG_Company_Logo.jpg",
      icon: Icons.beenhere,
      icondetails: 'Approved',
      date: '29 Dec2022',
      amount: 1320,
    ),
    InvoiceData(
      title: "Allen Solly Edappally",
      subtitle: "Invoice no: 55448856",
      image: "assets/images/allenSolly.png",
      icon: Icons.access_time_filled,
      icondetails: 'Pending',
      date: '29 Dec2022',
      amount: 780,
    ),
    InvoiceData(
      title: "Nike Edappally",
      subtitle: "Invoice no: 55448817",
      image: "assets/images/nike-logo-115309645398lsn6qzriq.png",
      icon: Icons.beenhere,
      date: '29 Dec2022',
      icondetails: 'Approved',
      amount: 2300,
    ),
    InvoiceData(
        title: "Dessi Cuppa",
        subtitle: "Invoice no: 55448818",
        image: "assets/images/desicuppa.png",
        icon: Icons.access_time_filled,
        date: '29 Dec2022',
        icondetails: 'Pending',
        amount: 180),
  ];
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Add New Invoice",
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue[900],
              fontWeight: FontWeight.w600,
            )),
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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenNotification(),
                  ));
            },
            icon: Icon(Icons.arrow_forward_ios),
            color: Colors.blue[900],
          ),
        ],
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
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: _height * .13,
                        width: _width * .4,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: _height * .07,
                              width: _width * .16,
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset("assets/images/Barcode.png"),
                            ),
                            Text("Scan your bill",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.w600,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        height: _height * .13,
                        width: _width * .4,
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: _height * .07,
                              width: _width * .16,
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset("assets/images/image (8).png"),
                            ),
                            Text("Upload bill",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.w600,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Container(
                    height: _height * .05,
                    width: double.infinity,
                    color: Colors.white12,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.article_outlined,
                            color: Colors.blue[900],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("My Invoices",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: invoiceDataList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 1.h, right: 1.h),
                          child: Container(
                            height: 10.h,
                            color: Colors.white10,
                            child: Card(
                              semanticContainer: true,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 1.h),
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundImage: AssetImage(
                                          "${invoiceDataList[index].image}"),
                                    ),
                                  ),
                                  Container(
                                    width: 35.w,
                                    height: 6.h,
                                    margin: EdgeInsets.only(
                                      left: 1.h,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          invoiceDataList[index]
                                              .title
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(invoiceDataList[index]
                                            .subtitle
                                            .toString()),
                                      ],
                                    ),
                                  ),
                                  Container(
                                   
                                    width: 18.w,
                                    height: 6.5.h,
                                    margin: EdgeInsets.only(
                                      left: .5.h,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          invoiceDataList[index]
                                              .amount
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blue[900]),
                                        ),
                                        Text(invoiceDataList[index]
                                            .date
                                            .toString())
                                      ],
                                    ),
                                  ),
                                   Container(
                                   
                                    width: 18.w,
                                    height: 6.5.h,
                                    margin: EdgeInsets.only(
                                      left: 1.5.h,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                           Icon(invoiceDataList[index].icon,color:(invoiceDataList[index].icondetails=="Pending" )?
                                                   Colors.orange[300] : (invoiceDataList[index].icondetails=="Cancelled")?Colors.red[300] :Colors.green[400]) ,
                                                Text(invoiceDataList[index].icondetails.toString(),
                                                style: TextStyle(
                                                  color: (invoiceDataList[index].icondetails=="Pending" )?
                                                   Colors.orange[300] : (invoiceDataList[index].icondetails=="Cancelled")?Colors.red[300] :Colors.green[400]))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                        // return Padding(
                        //     padding: const EdgeInsets.only(left: 15, right: 15),
                        //     child: Card(
                        //         color: Colors.white70,
                        //         child: ListTile(
                        //           leading: CircleAvatar(
                        //             radius: 25,
                        //             backgroundImage: AssetImage(
                        //                 "${invoiceDataList[index].image}"),
                        //           ),
                        //           title: Text(
                        //             invoiceDataList[index].title.toString(),
                        //             style: TextStyle(
                        //                 fontSize: 16,
                        //                 fontWeight: FontWeight.bold),
                        //           ),
                        //           subtitle: Text(invoiceDataList[index]
                        //               .subtitle
                        //               .toString()),
                        //               trailing: Wrap(
                        //                 spacing: 5,
                        //                 children: [
                        //                   Container(
                        //                  height:5.h,
                        //                  // _height*.05,
                        //                   width:
                        //                    _width*.157,
                        //                     child: Column(
                        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //                       crossAxisAlignment: CrossAxisAlignment.end,
                        //                       children: [
                        //                         Text(invoiceDataList[index].amount.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.blue[900]),),
                        //                         Text(invoiceDataList[index].date.toString())
                        //                       ],

                        //                     ),
                        //                   ), Container(
                        //                   height:5.h,
                        //                   //_height*.05,
                        //                   width: 15.w,
                        //                   //_width*.13,
                        //                     child: Column(
                        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //                       crossAxisAlignment: CrossAxisAlignment.end,
                        //                       children: [
                        //                         Icon(invoiceDataList[index].icon,color:(invoiceDataList[index].icondetails=="Pending" )?
                        //                            Colors.orange[300] : (invoiceDataList[index].icondetails=="Cancelled")?Colors.red[300] :Colors.green[400]) ,
                        //                         Text(invoiceDataList[index].icondetails.toString(),
                        //                         style: TextStyle(
                        //                           color: (invoiceDataList[index].icondetails=="Pending" )?
                        //                            Colors.orange[300] : (invoiceDataList[index].icondetails=="Cancelled")?Colors.red[300] :Colors.green[400]))

                        //                       ],

                        //                     ),
                        //                   )
                        //                 ],
                        //               ),
                        //         )
                        //         )
                        //         );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
