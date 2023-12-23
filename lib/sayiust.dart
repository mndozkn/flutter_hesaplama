import 'dart:math';

import 'package:flutter/material.dart';


class SayiUssu extends StatefulWidget {
  final TextEditingController? controller;
  const SayiUssu({Key? key, this.controller ,required this.title}): super(key: key);
  final Title? title;
  @override
  State<SayiUssu> createState() => _SayiUssuState();
}

class _SayiUssuState extends State<SayiUssu> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final ust = TextEditingController();
    final sayi = TextEditingController();
    final sonuc = TextEditingController();
    int islemSonuc = 0;

    int islem() {
      num islemS = pow(num.parse(sayi.text),num.parse(ust.text));
      return islemS.toInt();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sayı Üssü Hesaplaması"),
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
            TextField(
              controller: ust,
              decoration: InputDecoration(
                  labelText: "Üst",
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
                sonuc.text = islemSonuc.toString();
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
              controller: sonuc,
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