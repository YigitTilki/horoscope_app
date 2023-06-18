import 'package:flutter/material.dart';
import 'package:horoscope_app/model/horoscope_item.dart';
import 'package:horoscope_app/model/horoscope.dart';
import 'package:horoscope_app/data/strings.dart';

class HoroscopeList extends StatelessWidget {
  late List<Horoscope> allHoroscopes;
  HoroscopeList() {
    allHoroscopes = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("HoroscopeList")),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return HoroScopeItem(
              listedHoroScope: allHoroscopes[index],
            );
          },
          itemCount: allHoroscopes.length,
        ),
      ),
    );
  }

  List<Horoscope> veriKaynaginiHazirla() {
    List<Horoscope> gecici = [];
    for (int i = 0; i < 12; i++) {
      var horoscopeName = Strings.BURC_ADLARI[i];
      var horoscopeDate = Strings.BURC_TARIHLERI[i];
      var horoscopeDetail = Strings.BURC_GENEL_OZELLIKLERI[i];
      var horoscopeSPhoto =
          Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      var horoscopeBPhoto =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk" + "${i + 1}.png";
      Horoscope eklenecekBurc = Horoscope(horoscopeName, horoscopeDate,
          horoscopeDetail, horoscopeSPhoto, horoscopeBPhoto);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
