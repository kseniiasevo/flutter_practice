import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Colors.white,
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(0), // here the desired height
            child: AppBar(
              backgroundColor: Colors.deepOrange,
            )),
        body: WeatherForecast(),
      ),
    );
  }
}

class WeatherForecast extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _headerTitle(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 15),
                  child: _cityTitle(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _date(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 45, bottom: 40),
                  child: Column(
                    children: [
                      Icon(
                        Icons.wb_sunny,
                        size: 60,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Text(
                      '14 C',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Text(
                      'SUNNY',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.wb_shade,
                      size: 32,
                      color: Colors.white,
                    ),
                    Text(
                      '5',
                      style: TextStyle(fontSize: 21),
                    ),
                    Text(
                      'km/hr',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.wb_sunny,
                      size: 32,
                      color: Colors.white,
                    ),
                    Text(
                      '3',
                      style: TextStyle(fontSize: 21),
                    ),
                    Text(
                      '%',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.wb_cloudy_sharp,
                      size: 32,
                      color: Colors.white,
                    ),
                    Text(
                      '20',
                      style: TextStyle(fontSize: 21),
                    ),
                    Text(
                      '%',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '7-DAY WEATHER FORECAST',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 200.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [

                                  ],
                                ),
                            ),
                          ],
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.green,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Text _headerTitle() {
  return Text(
    'Weather Forecast',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
  );
}

Text _cityTitle() {
  return Text(
    'Kyiv, Ukraine',
    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w300),
  );
}

Text _date() {
  return Text(
    'Friday, May 20, 2020 ',
    style: TextStyle(fontSize: 18),
  );
}

// Widget _buildBody() {
//   return SingleChildScrollView(
//     child: Column(
//       children: [
//         _headerImage(),
//         SafeArea(
//           child: Padding(
//             padding: EdgeInsets.all(16),
//             child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   _weatherDescription(),
//                   Divider(),
//                   _temperature(),
//                   Divider(),
//                   _temperatureForecast(),
//                   Divider(),
//                   _footerRatings(),
//                 ]),
//           ),
//         ),
//       ],
//     ),
//   );
// }
//
// Widget _headerImage() {
//   return Image(
//     image: NetworkImage(
//         'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/BBC_Weather.svg/1200px-BBC_Weather.svg.png'),
//     fit: BoxFit.cover,
//   );
// }
//
// Column _weatherDescription() {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Text(
//         'Tuesday – May 22',
//         style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//       ),
//       Divider(),
//       Text(
//         'In the north of the country it’s very windy and cold. There is a chance of some rain too, so don’t leave home without your umbrella!',
//         style: TextStyle(color: Colors.black54),
//       ),
//     ],
//   );
// }
//
// Row _temperature() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Icon(
//             Icons.wb_sunny,
//             color: Colors.yellow,
//           ),
//         ],
//       ),
//       SizedBox(width: 16.0),
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Text(
//                 '15 Clear',
//                 style: TextStyle(color: Colors.deepPurple),
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               Text(
//                 'Kyiv',
//                 style: TextStyle(color: Colors.grey),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ],
//   );
// }
//
// Wrap _temperatureForecast() {
//   return Wrap(
//     spacing: 10.0,
//     children: List.generate(7, (index) {
//       return Chip(
//         label: Text(
//           '${index + 20}C',
//           style: TextStyle(fontSize: 18.0),
//         ),
//         avatar: Icon(
//           Icons.wb_cloudy,
//           color: Colors.blue.shade300,
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(4.0),
//           side: BorderSide(color: Colors.grey),
//         ),
//         backgroundColor: Colors.grey.shade100,
//       );
//     }),
//   );
// }
//
// Row _footerRatings() {
//   var stars = Row(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//       Icon(Icons.star, size: 18.0, color: Colors.yellow[600]),
//       Icon(Icons.star, size: 18.0, color: Colors.yellow[600]),
//       Icon(Icons.star, size: 18.0, color: Colors.yellow[600]),
//       Icon(Icons.star, size: 18.0, color: Colors.black),
//       Icon(Icons.star, size: 18.0, color: Colors.black),
//     ],
//   );
//
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       Text('Info with openweathermap.com', style: TextStyle(fontSize: 18),),
//       stars,
//     ],
//   );
// }

// class CounterWidget extends StatefulWidget {
//   @override
//   _CounterWidgetState createState() => _CounterWidgetState();
// }
//
// class _CounterWidgetState extends State<CounterWidget> {
//   int _count = 50;
//
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(14),
//       ),
//       width: 150,
//       height: 60,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.remove),
//             tooltip: '-',
//             onPressed: () {
//               setState(() {
//                 _count -= 1;
//               });
//             },
//           ),
//           Text(
//             '$_count',
//             style: TextStyle(
//               fontSize: 30.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           IconButton(
//             icon: const Icon(Icons.add),
//             tooltip: '+',
//             onPressed: () {
//               setState(() {
//                 _count += 1;
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
