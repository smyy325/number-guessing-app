import 'package:flutter/material.dart';
import 'package:sayi_tahmin/TahminEkrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Tahmin Oyunu",
              style: TextStyle(
                color: Colors.black54, fontSize: 36
              ),
            ),
            Image.asset("images/zar.png", width: 150, height: 150,),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Tahminekrani()));
                },
                child: Text("OYUNA BAŞLA"),
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
