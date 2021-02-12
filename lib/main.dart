import 'package:quran_app/models/quran_ayat_model.dart';
import 'package:quran_app/models/quran_model.dart';
import 'package:quran_app/screen/quran_detail.dart';
import 'package:quran_app/screen/quran_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: QuranData(), //LOAD PROVIDER QURANDATA UNTUK STATE MANAGEMENT LIST SURAH
        ),
        //PROVIDER LAINNYA AKAN DITEMPAT DISINI, DIPISAHKAN DENGAN KOMA
        ChangeNotifierProvider.value(
          value: QuranAyat(),
        ),
      ],
      child: MaterialApp(
        title: 'Mozeeb',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: QuranList(), //DEFAULTNYA AKAN ME-LOAD SCREEN QURANLIST
        routes: {
          //ROUTING UNTUK DETAIL SURAH
          '/detail': (ctx) => QuranDetail(),
        },
      ),
    );
  }
}
