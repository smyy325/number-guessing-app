import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sayi_tahmin/SonucEkrani.dart';

class Tahminekrani extends StatefulWidget {
  const Tahminekrani({super.key});

  @override
  State<Tahminekrani> createState() => _TahminekraniState();
}

class _TahminekraniState extends State<Tahminekrani> {

  var tfTahmin=TextEditingController();
  int rasgeleSayi=0;
  int kalanHak=3;
  String yonlendirme="";

  @override
  void initState(){
    super.initState();
    rasgeleSayi=Random().nextInt(101);
    print("Rasgele Sayı: $rasgeleSayi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Tahmin Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Kalan Hak: $kalanHak",
              style: TextStyle(
                  color: Colors.purpleAccent, fontSize: 30
              ),
            ),
            Text("Yardım: $yonlendirme",
              style: TextStyle(
                  color: Colors.black54, fontSize: 24
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: tfTahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Tahmin",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  kalanHak=kalanHak-1;

                });
                int tahmin=int.parse(tfTahmin.text);
                if(tahmin==rasgeleSayi){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SonucEkreni(sonuc: true,)));
                  return;
                }
                if(tahmin>rasgeleSayi){
                  setState(() {
                    yonlendirme="Tahmini Azalt";
                  });
                }
                if(tahmin<rasgeleSayi){
                  setState(() {
                    yonlendirme="Tahmini Arttır";
                  });
                }
                if(kalanHak==0){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SonucEkreni(sonuc: false,)));

                }
                tfTahmin.text="";

              },
              child: Text("TAHMİN ET", style: TextStyle(fontSize: 20),),
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(
                  Size( 200.0 , 75.0 ), // Düğme genişliği ve yüksekliği
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
