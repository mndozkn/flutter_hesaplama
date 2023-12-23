import 'dart:math';

import 'package:flutter/material.dart';


class Vergi extends StatefulWidget {
  final TextEditingController? controller;
  const Vergi({Key? key, this.controller ,required this.title}): super(key: key);
  final Title? title;
  @override
  State<Vergi> createState() => _VergiState();
}

class _VergiState extends State<Vergi> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final fiyat = TextEditingController();
    final vergi = TextEditingController();
    int islemSonuc = 0;

    int islem() {
      int islemS = 0;
      islemS = (int.parse(fiyat.text) * 20) ~/ 100;

      return islemS;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Vergi Hesaplaması"),
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
                islemSonuc = islem();
                vergi.text = islemSonuc.toString();
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
              controller: vergi,
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