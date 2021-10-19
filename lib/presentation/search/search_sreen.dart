import 'package:flutter/material.dart';
import 'package:suka_nonton/presentation/home/components/recent.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20,top: 20),
      child: Column(
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white,),
            
            child: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Search Your Movie ...' ),
                  
                  
            ),
          ),
          SizedBox(height: 50,),
          Expanded(
            
            child: Recent(),
          )
        ],
      ),
    );
  }
}
