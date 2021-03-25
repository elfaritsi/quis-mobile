import 'package:flutter/material.dart';
// import 'dart:js';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Routing Navigation',
    initialRoute: '/',
    routes: {
      '/': (context) => HalamanPertama(),
      HalamanKedua.routeName: (context) => HalamanKedua(),
      HalamanKetiga.routeName: (context) => HalamanKetiga(),
    },
  ));
}

class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Daeng Mhd El Faritsi"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Selamat Datang, ini adalah halaman pertama...",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: 10, bottom: 5, left: 10, right: 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, HalamanKedua.routeName);
                          },
                          child: Text("Halaman Kedua")),
                    )),
                Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, HalamanKetiga.routeName);
                          },
                          child: Text("Halaman Ketiga")),
                    ))
              ],
            ),
          )),
    );
  }
}

class HalamanKedua extends StatelessWidget {
  static const String routeName = "/halamankedua";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Halaman kedua"),
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Sekarang anda berada di halaman kedua...",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Kembali"),
                  style: ElevatedButton.styleFrom(primary: Colors.redAccent),),
            ],
          ),
        ),
      ),
    );
  }
}

class HalamanKetiga extends StatelessWidget {
  static const String routeName = "/halamanketiga";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text("Halaman Ketiga"),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Ini adalah halaman ketiga", style: TextStyle(fontSize: 20),),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Kembali"), 
                  style: ElevatedButton.styleFrom(primary: Colors.brown),),
            )
          ],
        )),
      ),
    );
  }
}
