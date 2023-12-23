import 'package:flutter/material.dart';
import 'package:hesaplamalar/bolen.dart';
import 'package:hesaplamalar/dikdortgen.dart';
import 'package:hesaplamalar/fakt.dart';
import 'package:hesaplamalar/fiyat.dart';
import 'package:hesaplamalar/kare.dart';
import 'package:hesaplamalar/daire.dart';
import 'package:hesaplamalar/ortalama.dart';
import 'package:hesaplamalar/saniye.dart';
import 'package:hesaplamalar/sayiust.dart';
import 'package:hesaplamalar/ucgen.dart';
import 'package:hesaplamalar/ucret.dart';
import 'package:hesaplamalar/vergi.dart';
import 'package:hesaplamalar/yamuk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hesaplamalar 22.11.2023 Ödevi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hesaplamalar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FilledButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Kare(title: Title(color: Colors.lightBlue,child: Text("Kare Alan Çevre Hesaplama"),),)));
            },
                child: Center(
                  child: Text("Kare Hesaplama"),
                )),
            SizedBox(height: 20,),
            FilledButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Dikdortgen(title: Title(color: Colors.lightBlue,child: Text("Dikdörtgen Alan Çevre Hesaplama"),),)));
            },
              child: Center(
                child: Text("Dikdörtgen Hesaplama"),
              ),
            ),
            SizedBox(height: 20,),
            FilledButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Daire(title: Title(color: Colors.lightBlue,child: Text("Daire Alan Çevre Hesaplama"),),)));
            },
                child: Center(
                  child: Text("Daire Hesaplama"),
                )),
            SizedBox(height: 20,),
            FilledButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Yamuk(title: Title(color: Colors.lightBlue,child: Text("Yamuk Alan Çevre Hesaplama"),),)));
            },
                child: Center(
                  child: Text("Yamuk Hesaplama"),
                )),
            SizedBox(height: 20,),
            FilledButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Ucgen(title: Title(color: Colors.lightBlue,child: Text("Üçgen Alan Çevre Hesaplama"),),)));
            },
                child: Center(
                  child: Text("Üçgen Hesaplama"),
                )),
            SizedBox(height: 20,),
            FilledButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SayiUssu(title: Title(color: Colors.lightBlue,child: Text("Sayı Üssü Hesaplama"),),)));
            },
                child: Center(
                  child: Text("Sayı Üssü Hesaplama"),
                )),
            SizedBox(height: 20,),
            FilledButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Faktoriyel(title: Title(color: Colors.lightBlue,child: Text("Faktöriyel Hesaplama"),),)));
            },
                child: Center(
                  child: Text("Faktöriyel Hesaplama"),
                )),
            SizedBox(height: 20,),
            FilledButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Bolen(title: Title(color: Colors.lightBlue,child: Text("Bölen Hesaplama"),),)));
            },
                child: Center(
                  child: Text("Bölen Hesaplama"),
                )),
            SizedBox(height: 20,),
            FilledButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Ortalama(title: Title(color: Colors.lightBlue,child: Text("Ortalama Hesaplama"),),)));
            },
                child: Center(
                  child: Text("Not Ortalaması Hesaplama"),
                )),
            SizedBox(height: 20,),
            FilledButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Ucret(title: Title(color: Colors.lightBlue,child: Text("Ücret Hesaplama"),),)));
            },
                child: Center(
                  child: Text("Ücret Hesaplama"),
                )),
            SizedBox(height: 20,),
            FilledButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Vergi(title: Title(color: Colors.lightBlue,child: Text("Vergi Hesaplama"),),)));
            },
                child: Center(
                  child: Text("Vergi Hesaplama"),
                )),
            SizedBox(height: 20,),
            FilledButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Saniye(title: Title(color: Colors.lightBlue,child: Text("Saniye Dönüşüm Hesaplama"),),)));
            },
                child: Center(
                  child: Text("Saniye Dönüşüm Hesaplama"),
                )),
            SizedBox(height: 20,),
            FilledButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Fiyat(title: Title(color: Colors.lightBlue,child: Text("Fiyat Hesaplama"),),)));
            },
                child: Center(
                  child: Text("Fiyat Hesaplama"),
                )),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
