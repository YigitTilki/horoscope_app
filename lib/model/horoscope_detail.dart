import 'package:flutter/material.dart';
import 'package:horoscope_app/model/horoscope.dart';
import 'package:palette_generator/palette_generator.dart';

class HoroscopeDetail extends StatefulWidget {
  final Horoscope selectedHoroscope;
  const HoroscopeDetail({required this.selectedHoroscope, Key? key})
      : super(key: key);

  @override
  State<HoroscopeDetail> createState() => _HoroscopeDetailState();
}

class _HoroscopeDetailState extends State<HoroscopeDetail> {
  Color appBarColor = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) => findAppBarColor());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: appBarColor,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(widget.selectedHoroscope.horoscopeName +
                " burcu ve özellikleri"),
            background: Image.asset(
              "images/" + widget.selectedHoroscope.horoscopeBPhoto,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(4),
            child: SingleChildScrollView(
                child: Column(
              children: [
                Center(
                  child: Text(
                    "GENEL ÖZELLİKLER",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Divider(
                  thickness: 3,
                  height: 10,
                  color: appBarColor,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.selectedHoroscope.horoscopeDetail,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            )),
          ),
        )
      ],
    ));
  }

  void findAppBarColor() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("images/${widget.selectedHoroscope.horoscopeBPhoto}"));
    appBarColor = _generator.dominantColor!.color;
    setState(() {});
  }
}
