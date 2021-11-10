import 'package:flutter/material.dart';
import 'package:suka_nonton/value/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new AssetImage("images/profile.jpg")))),
                SizedBox(width: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Guest",
                      style: TextStyle(color: Colors.white70, fontSize: 30),
                    ),
                    Text(
                      "this is just dummy account",
                      style: TextStyle(color: Colors.white30, fontSize: 15),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              decoration: BoxDecoration(
                  color: color1,
                  border: Border(
                      bottom: BorderSide(width: 1, color: Colors.black26),
                      top: BorderSide(width: 1, color: Colors.black26))),
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: InkWell(
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Setting",
                        style: TextStyle(color: Colors.white70, fontSize: 20)),
                    Expanded(child: Container()),
                    Transform.rotate(
                      angle: 9.4,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        textDirection: TextDirection.ltr,
                      ),
                    )
                  ],
                ),
              )),
          Container(
              decoration: BoxDecoration(
                  color: color1,
                  border: Border(
                      bottom: BorderSide(width: 1, color: Colors.black26),
                      top: BorderSide(width: 1, color: Colors.black26))),
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: InkWell(
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellowAccent,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Rating",
                        style: TextStyle(color: Colors.white70, fontSize: 20)),
                    Expanded(child: Container()),
                    Transform.rotate(
                      angle: 9.4,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        textDirection: TextDirection.ltr,
                      ),
                    )
                  ],
                ),
              )),
          Container(
              decoration: BoxDecoration(
                  color: color1,
                  border: Border(
                      bottom: BorderSide(width: 1, color: Colors.black26),
                      top: BorderSide(width: 1, color: Colors.black26))),
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: InkWell(
                onTap: () {
                  print("haii");
                },
                child: Row(
                  children: [
                    Icon(Icons.person, color: color4),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Edit Profile",
                        style: TextStyle(color: Colors.white70, fontSize: 20)),
                    Expanded(child: Container()),
                    Transform.rotate(
                      angle: 9.4,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        textDirection: TextDirection.ltr,
                      ),
                    )
                  ],
                ),
              )),
          Container(
              decoration: BoxDecoration(
                  color: color1,
                  border: Border(
                      bottom: BorderSide(width: 1, color: Colors.black26),
                      top: BorderSide(width: 1, color: Colors.black26))),
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: InkWell(
                onTap: () {
                  print("haii");
                },
                child: Row(
                  children: [
                    Icon(Icons.construction,color: color4),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Coming soon",
                        style: TextStyle(color: Colors.white70, fontSize: 20)),
                    Expanded(child: Container()),
                    Transform.rotate(
                      angle: 9.4,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        textDirection: TextDirection.ltr,
                      ),
                    )
                  ],
                ),
              )),
          Container(
              decoration: BoxDecoration(
                  color: color1,
                  border: Border(
                      bottom: BorderSide(width: 1, color: Colors.black26),
                      top: BorderSide(width: 1, color: Colors.black26))),
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: InkWell(
                onTap: () {
                  print("haii");
                },
                child: Row(
                  children: [
                    Icon(Icons.construction, color: color4),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Coming soon",
                        style: TextStyle(color: Colors.white70, fontSize: 20)),
                    Expanded(child: Container()),
                    Transform.rotate(
                      angle: 9.4,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        textDirection: TextDirection.ltr,
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
