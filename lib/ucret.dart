import 'dart:math';

import 'package:flutter/material.dart';


class Ucret extends StatefulWidget {
  final TextEditingController? controller;
  const Ucret({Key? key, this.controller ,required this.title}): super(key: key);
  final Title? title;
  @override
  State<Ucret> createState() => _UcretState();
}

class _UcretState extends State<Ucret> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final saatUcreti = TextEditingController();
    final calismaSaati = TextEditingController();
    final ucret = TextEditingController();
    int islemSonuc = 0;

    int islem() {
      int islemS = 0;
      islemS = int.parse(saatUcreti.text)*int.parse(calismaSaati.text);

      return islemS;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Ücret Hesaplaması"),
      ),
      body: Center(
        child:Column(
          children: [
            SizedBox(height: 50,),
            TextField(
              controller: saatUcreti,
              decoration: InputDecoration(
                  labelText: "Saatlik Ücret",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: calismaSaati,
              decoration: InputDecoration(
                  labelText: "Çalışılan Saat",
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
                ucret.text = islemSonuc.toString();
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
              controller: ucret,
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