import 'package:flutter/material.dart';
import 'package:suka_nonton/value/colors.dart';


class RecomendationWidget extends StatefulWidget {
  const RecomendationWidget({Key? key}) : super(key: key);

  @override
  RecomendationWidgetState createState() => RecomendationWidgetState();
}

class RecomendationWidgetState extends State<RecomendationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 230,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                    child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Card(
                    color: color1,
                    elevation: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://mydirtsheet.files.wordpress.com/2021/05/quiet17332.jpg",
                          width: 100,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Judul Film",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height:5),
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
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )),
              ],
            );
          },
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
        ),
      ),
    );
  }
}
