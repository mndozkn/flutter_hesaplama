import 'dart:math';

import 'package:flutter/material.dart';


class Saniye extends StatefulWidget {
  final TextEditingController? controller;
  const Saniye({Key? key, this.controller ,required this.title}): super(key: key);
  final Title? title;
  @override
  State<Saniye> createState() => _SaniyeState();
}

class _SaniyeState extends State<Saniye> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final saniye = TextEditingController();
    final saat = TextEditingController();
    String islemSonuc = "";

    String islem() {
      String islemS = "";
      int dakika = 0;
      int saat = 0;
      int sn = int.parse(saniye.text);
      while (sn >= 60) {
        dakika = sn ~/ 60;
        sn -= dakika*60;
        if (dakika >= 60) {
          saat = dakika ~/ 60;
          dakika -= saat*60;
        }
        if (dakika < 60 && sn < 60) {
          islemS = saat.toString() + ":" + (dakika > 10 ? "" : "0") + dakika.toString() + ":" + (sn > 10 ? "" : "0") + sn.toString();
          break;
        }
      }

      return islemS;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Saniye Dönüşüm Hesaplaması"),
      ),
      body: Center(
        child:Column(
          children: [
            SizedBox(height: 50,),
            TextField(
              controller: saniye,
              decoration: InputDecoration(
                  labelText: "Saniye",
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
                saat.text = islemSonuc;
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
              controller: saat,
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