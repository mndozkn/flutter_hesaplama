import 'dart:math';

import 'package:flutter/material.dart';


class Bolen extends StatefulWidget {
  final TextEditingController? controller;
  const Bolen({Key? key, this.controller ,required this.title}): super(key: key);
  final Title? title;
  @override
  State<Bolen> createState() => _BolenState();
}

class _BolenState extends State<Bolen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final sayi = TextEditingController();
    final bolen = TextEditingController();
    String islemSonuc = "";

    String islem() {
      String islemS = "1";
      for (int i = 2; i <= int.parse(sayi.text); i++) {
        if (int.parse(sayi.text)%i==0) {
          islemS += ", " + i.toString();
        }
      }
      return islemS;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Bölen Hesaplaması"),
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
                bolen.text = islemSonuc;
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
              controller: bolen,
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