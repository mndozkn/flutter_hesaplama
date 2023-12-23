import 'dart:math';

import 'package:flutter/material.dart';


class Ucgen extends StatefulWidget {
  final TextEditingController? controller;
  const Ucgen({Key? key, this.controller ,required this.title}): super(key: key);
  final Title? title;
  @override
  State<Ucgen> createState() => _UcgenState();
}

class _UcgenState extends State<Ucgen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Üçgen Hesaplama"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FilledButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EskenarUcgen(title: Title(color: Colors.lightBlue,child: Text("Eşkenar Üçgen Alan Çevre Hesaplama"),),)));
            },
                child: Center(
                  child: Text("Eşkenar Üçgen Hesaplama"),
                )),
            SizedBox(height: 20,),
            FilledButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => IkizkenarUcgen(title: Title(color: Colors.lightBlue,child: Text("İkizkenar Üçgen Alan Çevre Hesaplama"),),)));
            },
              child: Center(
                child: Text("İkizkenar Üçgen Hesaplama"),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

class EskenarUcgen extends StatefulWidget {
  final TextEditingController? controller;
  const EskenarUcgen({Key? key, this.controller ,required this.title}): super(key: key);
  final Title? title;
  @override
  State<EskenarUcgen> createState() => _EskenarUcgen();
}

class _EskenarUcgen extends State<EskenarUcgen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final kenar = TextEditingController();
    final alanYazi = TextEditingController();
    final cevreYazi = TextEditingController();
    int alan = 0;
    int cevre = 0;

    int alanBul() {
      int alanH = ((int.parse(kenar.text)*int.parse(kenar.text))*(sqrt(3)).toInt())~/4;
      return alanH;
    }

    int cevreBul() {
      int cevreH = int.parse(kenar.text)*3;
      return cevreH;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Eşkenar Üçgen Alan ve Çevre Hesaplaması"),
      ),
      body: Center(
        child:Column(
          children: [
            SizedBox(height: 50,),
            TextField(
              controller: kenar,
              decoration: InputDecoration(
                  labelText: "Kenar Uzunluğu",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector
              (
              onTap: ()
              {
                alan = alanBul();
                cevre = cevreBul();

                alanYazi.text = alan.toString();
                cevreYazi.text = cevre.toString();
              },
              child: Container(
                alignment: Alignment.center,
                height: size.height / 14,
                width: size.width,
                decoration: BoxDecoration(color: Colors.red,
                    borderRadius: BorderRadius.circular(5)),
                child: Text("Hesapla",
                  style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 40,),
            TextField(
              controller: alanYazi,
              decoration: InputDecoration(
                  labelText: "Alanı",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              controller: cevreYazi,
              decoration: InputDecoration(
                  labelText: "Çevresi",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
          ],
        ),
      ),
    );
}

  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }
}


class IkizkenarUcgen extends StatefulWidget {
  final TextEditingController? controller;
  const IkizkenarUcgen({Key? key, this.controller ,required this.title}): super(key: key);
  final Title? title;
  @override
  State<IkizkenarUcgen> createState() => _IkizkenarUcgen();
}

class _IkizkenarUcgen extends State<IkizkenarUcgen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final kenar = TextEditingController();
    final yukseklik = TextEditingController();
    final taban = TextEditingController();
    final alanYazi = TextEditingController();
    final cevreYazi = TextEditingController();
    int alan = 0;
    int cevre = 0;

    int alanBul() {
      int alanH = (int.parse(taban.text)*int.parse(yukseklik.text))~/2;
      return alanH;
    }

    int cevreBul() {
      int cevreH = (int.parse(kenar.text)*2)+int.parse(taban.text);
      return cevreH;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("İkizkenar Alan ve Çevre Hesaplaması"),
      ),
      body: Center(
        child:Column(
          children: [
            SizedBox(height: 50,),
            TextField(
              controller: kenar,
              decoration: InputDecoration(
                  labelText: "Kenar Uzunluğu",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: taban,
              decoration: InputDecoration(
                  labelText: "Taban Uzunluğu",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: yukseklik,
              decoration: InputDecoration(
                  labelText: "Yükseklik Uzunluğu",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector
              (
              onTap: ()
              {
                alan = alanBul();
                cevre = cevreBul();

                alanYazi.text = alan.toString();
                cevreYazi.text = cevre.toString();
              },
              child: Container(
                alignment: Alignment.center,
                height: size.height / 14,
                width: size.width,
                decoration: BoxDecoration(color: Colors.red,
                    borderRadius: BorderRadius.circular(5)),
                child: Text("Hesapla",
                  style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 40,),
            TextField(
              controller: alanYazi,
              decoration: InputDecoration(
                  enabled: false,
                  labelText: "Alanı",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              controller: cevreYazi,
              decoration: InputDecoration(
                  enabled: false,
                  labelText: "Çevresi",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }
}