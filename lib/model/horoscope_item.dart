import 'package:flutter/material.dart';
import 'package:horoscope_app/model/horoscope.dart';
import 'package:horoscope_app/model/horoscope_detail.dart';

class HoroScopeItem extends StatelessWidget {
  final Horoscope listedHoroScope;
  const HoroScopeItem({required this.listedHoroScope, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/horoscopeDetail",
                  arguments: listedHoroScope);
            },
            leading: Image.asset(
              "images/" + listedHoroScope.horoscopeSPhoto,
              width: 34,
              height: 34,
            ),
            title: (Text(
              listedHoroScope.horoscopeName,
              style: myTextStyle.headline5,
            )),
            subtitle: Text(
              listedHoroScope.horoscopeDate,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
