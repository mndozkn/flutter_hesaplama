import 'dart:math';

import 'package:flutter/material.dart';


class Faktoriyel extends StatefulWidget {
  final TextEditingController? controller;
  const Faktoriyel({Key? key, this.controller ,required this.title}): super(key: key);
  final Title? title;
  @override
  State<Faktoriyel> createState() => _FaktoriyelState();
}

class _FaktoriyelState extends State<Faktoriyel> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final sayi = TextEditingController();
    final fakt = TextEditingController();
    int islemSonuc = 0;

    int islem() {
      int islemS = 1;
      for (int i = 1; i <= int.parse(sayi.text); i++) {
        islemS*=i;
      }
      return islemS;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Faktröriyel Hesaplaması"),
      ),
      body: Center(
        child:Column(
          children: [
            SizedBox(height: 50,),
            TextField(
              controller: sayi,
              decoration: InputDecoration(
                  labelText: "Sayı",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector
              (
              onTap: ()
              {
                islemSonuc = islem();
                fakt.text = islemSonuc.toString();
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
              controller: fakt,
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