import 'package:flutter/material.dart';


class Yamuk extends StatefulWidget {
  final TextEditingController? controller;
  const Yamuk({Key? key, this.controller ,required this.title}): super(key: key);
  final Title? title;
  @override
  State<Yamuk> createState() => _YamukState();
}

class _YamukState extends State<Yamuk> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final altTaban = TextEditingController();
    final ustTaban = TextEditingController();
    final yanKenar1 = TextEditingController();
    final yanKenar2 = TextEditingController();
    final yukseklik = TextEditingController();
    final alanYazi = TextEditingController();
    final cevreYazi = TextEditingController();
    int alan = 0;
    int cevre = 0;

    int alanBul() {
      int alanH = (int.parse(yukseklik.text)*(int.parse(ustTaban.text)+int.parse(altTaban.text)))~/2;
      return alanH;
    }

    int cevreBul() {
      int cevreH = int.parse(yanKenar1.text)+int.parse(yanKenar2.text)+int.parse(ustTaban.text)+int.parse(altTaban.text);
      return cevreH;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Yamuk Alan ve Çevre Hesaplaması"),
      ),
      body: Center(
        child:Column(
          children: [
            SizedBox(height: 50,),
            TextField(
              controller: altTaban,
              decoration: InputDecoration(
                  labelText: "Alt Tabanın Uzunluğu",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: ustTaban,
              decoration: InputDecoration(
                  labelText: "Üst Tabanın Uzunluğu",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              controller: yukseklik,
              decoration: InputDecoration(
                  labelText: "Yükselik Uzunluğu",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              controller: yanKenar1,
              decoration: InputDecoration(
                  labelText: "1. Yan Kenarın Uzunluğu",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              controller: yanKenar2,
              decoration: InputDecoration(
                  labelText: "2. Yan Kenarın Uzunluğu",
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
}