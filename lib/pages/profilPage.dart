import 'package:flutter/material.dart';

class ProfilPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: (Column(children: [
          Padding(padding: EdgeInsets.all(12.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 300.0,
                  height: 280.0,
                  child: Card(
                    elevation: 2,
                    child: CircleAvatar(
                      minRadius: 1.0,
                      backgroundImage: AssetImage('assets/profil.JPG'),
                    ),
                  ))
            ],
          ),
          Padding(padding: EdgeInsets.all(6.0)),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'NAMA',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'NUR BAITY',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.1)),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'NPM',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' 2010020096',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.1)),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'KELAS',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '5F SI BJM',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.1)),
              ],
            ),
          ),
        ])));
  }
}
