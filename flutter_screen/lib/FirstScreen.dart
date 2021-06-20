import 'package:flutter/material.dart';
import 'package:flutter_screen/Constant.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            //Top Destinations
            Container(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Top Destinations', style: kTextStyle16PBR,),
                    Spacer(),
                    Text(
                      numbers.length.toString(),
                      style: kTextStyle16PBR,
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.red,
                    )
                  ],
                )),
            //their data
            Container(
              padding: EdgeInsets.all(8.0),
              height: MediaQuery.of(context).size.height * 0.20,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.height * 0.13,
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60),
                            ),
                            color: Colors.blue,
                            child: Container(
                              child: Center(
                                  child: Text(
                                    numbers[index].toString(),
                                    style:
                                    TextStyle(color: Colors.white, fontSize: 36.0),
                                  )),
                            ),
                          ),
                        ),
                        Text(index.toString())
                      ],
                    );
                  }),
            ),
            //Tows/Villages
            Container(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Tows/Villages', style: kTextStyle16PBR,),
                    Spacer(),
                    Text(
                      numbers.length.toString(),
                      style: kTextStyle16PBR,
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.red,
                    )
                  ],
                )),
            //their data
            Container(
              padding: EdgeInsets.all(8.0),
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Card(
                        color: Colors.blue,
                        child: Container(
                          child: Center(
                              child: Text(
                                numbers[index].toString(),
                                style: TextStyle(color: Colors.white, fontSize: 36.0),
                              )),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
