import 'package:flutter/material.dart';

class SonucEkreni extends StatefulWidget {
  bool sonuc;


  SonucEkreni({required this.sonuc});

  @override
  State<SonucEkreni> createState() => _SonucEkreniState();
}

class _SonucEkreniState extends State<SonucEkreni> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.sonuc? Image.asset("images/mutlu.png", width: 200, height: 200,):Image.asset("images/uzgun.png", width: 200, height: 200,),
            Text(widget.sonuc? "KAZANDINIZ 🎉":"KAYBETTİNİZ :(",
              style: TextStyle(
                  color: Colors.black54, fontSize: 36
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("TEKRAR DENE"),
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
