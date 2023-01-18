import 'package:aindriya/view/screens/screenInvoiceDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenNotification extends StatelessWidget {
  ScreenNotification({Key? key}) : super(key: key);

  List notificationList = [
    "MyG Kakkanad has approved your invoice of 128 points",
    "Ayur Pharma has approved your invoice of 600 points",
    "You successfully added 500 wonder points to your wallet",
    "Puma Edappaly has declined your invoice of 728 points",
  ];

  List notificationImage = [
    "assets/images/MyG_Company_Logo.jpg",
    "assets/images/ayurpharma.jpg",
    "assets/images/png_letter_i_51133.png",
    "assets/images/puma.png"
  ];
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text("Notifications",
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
                      builder: (context) => ScreenInvoiceDetails(),
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
            child: ListView.builder(
              itemCount: notificationList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(notificationImage[index]),
                      ),
                      title: Text(notificationList[index]),
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
