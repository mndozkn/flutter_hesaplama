import 'package:flutter/material.dart';


class Dikdortgen extends StatefulWidget {
  final TextEditingController? controller;
  const Dikdortgen({Key? key, this.controller ,required this.title}): super(key: key);
  final Title? title;
  @override
  State<Dikdortgen> createState() => _DikdortgenState();
}

class _DikdortgenState extends State<Dikdortgen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final Kisakenar = TextEditingController();
    final Uzunkenar = TextEditingController();
    final alanYazi = TextEditingController();
    final cevreYazi = TextEditingController();
    int alan = 0;
    int cevre = 0;

    int alanBul() {
      int alanH = int.parse(Uzunkenar.text)*int.parse(Kisakenar.text);
      return alanH;
    }

    int cevreBul() {
      int cevreH = (int.parse(Kisakenar.text) + int.parse(Uzunkenar.text)) * 2;
      return cevreH;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Dikdörtgen Alan ve Çevre Hesaplaması"),
      ),
      body: Center(
        child:Column(
          children: [
            SizedBox(height: 50,),
            TextField(
              controller: Uzunkenar,
              decoration: InputDecoration(
                  labelText: "Uzun Kenarın Uzunluğu",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: Kisakenar,
              decoration: InputDecoration(
                  labelText: "Kısa Kenarın Uzunluğu",
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