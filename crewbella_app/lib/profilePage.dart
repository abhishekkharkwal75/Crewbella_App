import 'package:crewbella_app/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero).then(
      (value) => Provider.of<Controller>(context, listen: false).fetchData(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text(
            "Account",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.black,
              )),
        ),
        body: SingleChildScrollView(
          child: context.watch<Controller>().isloading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      CircleAvatar(
                        radius: 110.0,
                        backgroundImage: NetworkImage(context.read<Controller>().basic["image_hd"]),
                        foregroundColor: Colors.black,
                        //backgroundColor: Colors.red,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        context.read<Controller>().basic["fullname"],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "${context.read<Controller>().basic["username"]}@gmail.com",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "India",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '${context.read<Controller>().basic["followings"]} followers',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '${context.read<Controller>().basic["quick_bookings"]} quickbooks',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          PhysicalModel(
                            borderRadius: BorderRadius.circular(20.0),
                            elevation: 1,
                            color: Colors.white,
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 100,
                              // color: Colors.red,
                              decoration: BoxDecoration(
                                  color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
                              child: Text(
                                'Account\nSetting',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          PhysicalModel(
                            borderRadius: BorderRadius.circular(20.0),
                            elevation: 1,
                            color: Colors.white,
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 100,
                              // color: Colors.red,
                              decoration: BoxDecoration(
                                  color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
                              child: Text(
                                'Update\nProfile',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          PhysicalModel(
                            borderRadius: BorderRadius.circular(20.0),
                            elevation: 1,
                            color: Colors.white,
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 100,
                              // color: Colors.red,
                              decoration: BoxDecoration(
                                  color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
                              child: Text(
                                'More',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        alignment: Alignment.center,
                        // color: Colors.red,
                        decoration: BoxDecoration(
                            color: Colors.red, borderRadius: BorderRadius.circular(20.0)),
                        child: Text(
                          'Apply for QuickBook',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ));
  }
}
