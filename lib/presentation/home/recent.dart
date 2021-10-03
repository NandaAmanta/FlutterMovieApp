import 'package:flutter/material.dart';
import 'package:suka_nonton/value/colors.dart';

class Recent extends StatefulWidget {
  const Recent({Key? key}) : super(key: key);

  @override
  _RecentState createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Card(
                      elevation: 5,
                      child: Image.network(
                        "https://mydirtsheet.files.wordpress.com/2021/05/quiet17332.jpg",
                        width: 70,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Judul Film",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Deskirpsi film , mencaeritakan seorang pemuda tampan dan berani yang rela berlari lari lalu dia melihat arti cinta sesungguhnya didepan mata dia tanpa dia kesadari",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: color2,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star,
                                  color: color2,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star,
                                  color: color2,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star,
                                  color: color2,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star_border_outlined,
                                  color: color2,
                                  size: 15,
                                ),
                                Expanded(child: Container()),
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    color: color2,
                                    size: 25,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Divider(color: color1)
              ],
            ),
          );
        },
        itemCount: 5,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}
