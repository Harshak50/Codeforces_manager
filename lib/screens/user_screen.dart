import 'package:coding_updates/services/user_info.dart';
import 'package:coding_updates/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'sidebar.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  var res;
  bool loading = false;
  getUserData() async {
    setState(() {
      loading = true;
    });
    res = await UserService.getUser();
    setState(() {
      loading = false;
    });
  }

  void initState() {
    getUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        drawer: NavDrawer(),
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(
             FontAwesomeIcons.bars,
               ),
              onPressed: () {
                setState(() {
                Scaffold.of(context).openDrawer();  
                });
                
              },
            ),
          ),
      ),
      body: loading == true
          ? SpinKitThreeBounce(color: Color(0xff004a7c), size: 20)
          : Center(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        res.result[0].titlePhoto,
                      ),
                    ),
                  ),
                  Text(
                    res.result[0].handle,
                    style: TextStyle(
                        color: kTitleColor,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    res.result[0].rank,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Rating: " + res.result[0].rating.toString(),
                    style: TextStyle(
                        color: Color(0xff3f72af),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Max Rating: " + res.result[0].maxRating.toString(),
                    style: TextStyle(
                        color: Color(0xff3f72af),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Friend of: " + res.result[0].friendOfCount.toString(),
                    style: TextStyle(
                        color: Color(0xff3f72af),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 5),
                      child: Card(
                        elevation: 3,
                        color: Colors.white,
                        child: SizedBox(
                          height: 60,
                          width: size.width,
                          child: Row(
                            children: [
                              Icon(
                                Icons.bar_chart_sharp,
                                color: Color(0xff62d2a2),
                                size: 40,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Rating Changes',
                                style: TextStyle(
                                    color: Color(0xff004a7c),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                   GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 5),
                      child: Card(
                        elevation: 3,
                        color: Colors.white,
                        child: SizedBox(
                          height: 60,
                          width: size.width,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.redAccent,
                                  size: 35,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Friends',
                                style: TextStyle(
                                    color: Color(0xff004a7c),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 5),
                      child: Card(
                        elevation: 3,
                        color: Colors.white,
                        child: SizedBox(
                          height: 60,
                          width: size.width,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.check_box_outlined,
                                  color: Colors.blue,
                                  size: 35,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Recent Submissions',
                                style: TextStyle(
                                    color: Color(0xff004a7c),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
    );
  }
}
