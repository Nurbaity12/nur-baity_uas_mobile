import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP NEWS'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(12)),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/OtomotifPage');
                },
                child: Column(
                  children: [
                    Icon(Icons.car_repair_sharp,
                        size: 100.2, color: Colors.blue),
                    Text(
                      'BERITA OTOMOTIF',
                      style: TextStyle(fontSize: 15.0, color: Colors.blue),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(30)),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/OlahragaPage');
                },
                child: Column(
                  children: [
                    Icon(Icons.sports_soccer_sharp,
                        size: 100.2, color: Colors.blue),
                    Text(
                      'BERITA OLAHRAGA',
                      style: TextStyle(fontSize: 15.0, color: Colors.blue),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(40)),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(35)),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/ProfilPage');
                },
                child: Column(
                  children: [
                    Icon(Icons.person, size: 100.2, color: Colors.blue),
                    Text('ABOUT BAITY',
                        style: TextStyle(fontSize: 15.0, color: Colors.blue))
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
