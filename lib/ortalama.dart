import 'dart:math';

import 'package:flutter/material.dart';


class Ortalama extends StatefulWidget {
  final TextEditingController? controller;
  const Ortalama({Key? key, this.controller ,required this.title}): super(key: key);
  final Title? title;
  @override
  State<Ortalama> createState() => _OrtalamaState();
}

class _OrtalamaState extends State<Ortalama> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final not1 = TextEditingController();
    final not2 = TextEditingController();
    final not3 = TextEditingController();
    final ortalama = TextEditingController();
    int islemSonuc = 0;

    int islem() {
      int islemS = 0;
      islemS = (int.parse(not1.text)+int.parse(not2.text)+int.parse(not3.text))~/3;

      return islemS;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Not Ortalama Hesaplaması"),
      ),
      body: Center(
        child:Column(
          children: [
            SizedBox(height: 50,),
            TextField(
              controller: not1,
              decoration: InputDecoration(
                  labelText: "1. Not",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: not2,
              decoration: InputDecoration(
                  labelText: "2. Not",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: not3,
              decoration: InputDecoration(
                  labelText: "3. Not",
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
                ortalama.text = islemSonuc.toString();
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
              controller: ortalama,
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