import 'package:flutter/material.dart';
class ProfileUser extends StatelessWidget {
  const ProfileUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}