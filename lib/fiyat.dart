import 'dart:math';

import 'package:flutter/material.dart';


class Fiyat extends StatefulWidget {
  final TextEditingController? controller;
  const Fiyat({Key? key, this.controller ,required this.title}): super(key: key);
  final Title? title;
  @override
  State<Fiyat> createState() => _FiyatState();
}

class _FiyatState extends State<Fiyat> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final fiyat = TextEditingController();
    final fullFiyat = TextEditingController();
    int islemSonuc = 0;

    int gidaVergi() {
      int islemS = 0;
      int vergi = 1;
      int vsizFiyat = int.parse(fiyat.text);

      islemS = vsizFiyat + (vsizFiyat * vergi)~/100;

      return islemS;
    }
    int temizlikVergi() {
      int islemS = 0;
      int vergi = 10;
      int vsizFiyat = int.parse(fiyat.text);

      islemS = vsizFiyat + (vsizFiyat * vergi)~/100;

      return islemS;
    }
    int digerVergi() {
      int islemS = 0;
      int vergi = 20;
      int vsizFiyat = int.parse(fiyat.text);

      islemS = vsizFiyat + (vsizFiyat * vergi)~/100;


      return islemS;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Fiyat Hesaplaması"),
      ),
      body: Center(
        child:Column(
          children: [
            SizedBox(height: 50,),
            TextField(
              controller: fiyat,
              decoration: InputDecoration(
                  labelText: "Fiyat",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector
              (
              onTap: ()
              {
                islemSonuc = gidaVergi();
                fullFiyat.text = islemSonuc.toString();
              },
              child: Container(
                alignment: Alignment.center,
                height: size.height / 14,
                width: size.width,
                decoration: BoxDecoration(color: Colors.red,
                    borderRadius: BorderRadius.circular(5)),
                child: Text("Gıda - %1 Vergi",
                  style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 40,),
            GestureDetector
              (
              onTap: ()
              {
                islemSonuc = temizlikVergi();
                fullFiyat.text = islemSonuc.toString();
              },
              child: Container(
                alignment: Alignment.center,
                height: size.height / 14,
                width: size.width,
                decoration: BoxDecoration(color: Colors.red,
                    borderRadius: BorderRadius.circular(5)),
                child: Text("Temizlik - %10 Vergi",
                  style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 40,),
            GestureDetector
              (
              onTap: ()
              {
                islemSonuc = digerVergi();
                fullFiyat.text = islemSonuc.toString();
              },
              child: Container(
                alignment: Alignment.center,
                height: size.height / 14,
                width: size.width,
                decoration: BoxDecoration(color: Colors.red,
                    borderRadius: BorderRadius.circular(5)),
                child: Text("Diğer - %20 Vergi",
                  style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 40,),
            TextField(
              controller: fullFiyat,
              decoration: InputDecoration(
                  enabled: false,
                  labelText: "Sonuç",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
          ],
        ),
      ),
    );
  }
}