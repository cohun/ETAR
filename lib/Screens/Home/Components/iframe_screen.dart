import 'dart:html';
import 'dart:ui' as ui;
import 'package:etar_app/Screens/Home/Components/app_bar.dart';
import 'package:etar_app/constant.dart';
import 'package:flutter/material.dart';

class IframeScreen extends StatefulWidget {
  const IframeScreen({Key key}) : super(key: key);

  @override
  _IframeScreenState createState() => _IframeScreenState();
}

class _IframeScreenState extends State<IframeScreen> {
  Widget _iframeWidget;

  final IFrameElement _iframeElement = IFrameElement();

  final _textController = TextEditingController();

  List<String> _videos = ['https://www.youtube.com/embed/bbPvddL2L7Q',
    "https://www.youtube.com/embed/Bm1o_RgD3LA", "https://www.youtube.com/embed/Ns-ZD-nz9mg",
    "https://www.youtube.com/embed/B4-IlnF-Lko", "https://www.youtube.com/embed/Kpp1k_W_kUM",
    "https://www.youtube.com/embed/YnvTp238dWw",
    "https://www.youtube.com/embed/xYYXtqBWJsc", "https://www.youtube.com/embed/ZYyLHUQ4eJo",
    "https://www.youtube.com/embed/ByF4krUhj5Y", "https://www.youtube.com/embed/Q7qs19sy9qQ",
    "https://www.youtube.com/embed/KqMJzj7kntg",
  ];
  var i = 0;

  @override
  void initState() {
    super.initState();


    _iframeElement.height = '500';
    _iframeElement.width = '500';

     _iframeElement.src = _videos[i];
    _iframeElement.style.border = 'none';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => _iframeElement,
    );

    _iframeWidget = HtmlElementView(
      key: UniqueKey(),
      viewType: 'iframeElement',
    );
  }

  void _newVideo(int i) {
    setState(() {
      _iframeElement.src = _videos[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    final _screenQueries = MediaQuery.of(context).size;
    //
    final _width = _screenQueries.width * 0.75;
    final _height = _screenQueries.height * 0.75;

    return Stack(
      children: <Widget>[
        Container(
          color: Colors.blueGrey[900],
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.double_arrow_sharp,
                            size: 20,
                            color: Colors.white60,
                          ),

                          TextButton.icon(
                            style: TextButton.styleFrom(
                              side: BorderSide(color: i == 0 ? crimson : Colors.blueGrey[900], width: 2),
                            ),
                            icon: Icon(Icons.play_arrow_outlined),
                            label: Text('ETAR Intro'),
                            onPressed: () {
                              i = 0;
                              return _newVideo(0);
                            },
                          ),

                          TextButton.icon(
                            style: TextButton.styleFrom(
                              side: BorderSide(color: i == 1 ? crimson : Colors.blueGrey[900], width: 2),
                            ),
                            icon: Icon(Icons.play_arrow_outlined),
                            label: Text('ETAR kód kérés'),
                            onPressed: () {
                              i = 1;
                              return _newVideo(1);
                            },
                          ),

                          TextButton.icon(
                            style: TextButton.styleFrom(
                              side: BorderSide(color: i == 2 ? crimson : Colors.blueGrey[900], width: 2),
                            ),
                            icon: Icon(Icons.play_arrow_outlined),
                            label: Text('Belépés ETAR kóddal'),
                            onPressed: () {
                              i = 2;
                              return _newVideo(2);
                            },
                          ),

                          TextButton.icon(
                            style: TextButton.styleFrom(
                              side: BorderSide(color: i == 3 ? crimson : Colors.blueGrey[900], width: 2),
                            ),
                            icon: Icon(Icons.play_arrow_outlined),
                            label: Text('Üzemeltetők megadása'),
                            onPressed: () {
                              i = 3;
                              return _newVideo(3);
                            },
                          ),

                          TextButton.icon(
                            style: TextButton.styleFrom(
                              side: BorderSide(color: i == 4 ? crimson : Colors.blueGrey[900], width: 2),
                            ),
                            icon: Icon(Icons.play_arrow_outlined),
                            label: Text('Termék felvitel'),
                            onPressed: () {
                              i = 4;
                              return _newVideo(4);
                            },
                          ),

                          TextButton.icon(
                            style: TextButton.styleFrom(
                              side: BorderSide(color: i == 5 ? crimson : Colors.blueGrey[900], width: 2),
                            ),
                            icon: Icon(Icons.play_arrow_outlined),
                            label: Text('Üzembehelyezés'),
                            onPressed: () {
                              i = 5;
                              return _newVideo(5);
                            },
                          ),

                          TextButton.icon(
                            style: TextButton.styleFrom(
                              side: BorderSide(color: i == 6 ? crimson : Colors.blueGrey[900], width: 2),
                            ),
                            icon: Icon(Icons.play_arrow_outlined),
                            label: Text('NFC betanítás'),
                            onPressed: () {
                              i = 6;
                              return _newVideo(6);
                            },
                          ),

                          TextButton.icon(
                            style: TextButton.styleFrom(
                              side: BorderSide(color: i == 7 ? crimson : Colors.blueGrey[900], width: 2),
                            ),
                            icon: Icon(Icons.play_arrow_outlined),
                            label: Text('NFC keresés'),
                            onPressed: () {
                              i = 7;
                              return _newVideo(7);
                            },
                          ),

                          TextButton.icon(
                            style: TextButton.styleFrom(
                              side: BorderSide(color: i == 8 ? crimson : Colors.blueGrey[900], width: 2),
                            ),
                            icon: Icon(Icons.play_arrow_outlined),
                            label: Text('Gyáriszám keresés'),
                            onPressed: () {
                              i = 8;
                              return _newVideo(8);
                            },
                          ),

                          TextButton.icon(
                            style: TextButton.styleFrom(
                              side: BorderSide(color: i == 9 ? crimson : Colors.blueGrey[900], width: 2),
                            ),
                            icon: Icon(Icons.play_arrow_outlined),
                            label: Text('Listázás'),
                            onPressed: () {
                              i = 9;
                              return _newVideo(9);
                            },
                          ),

                          TextButton.icon(
                            style: TextButton.styleFrom(
                              side: BorderSide(color: i == 10 ? crimson : Colors.blueGrey[900], width: 2),
                            ),
                            icon: Icon(Icons.play_arrow_outlined),
                            label: Text('Excel export'),
                            onPressed: () {
                              i = 10;
                              return _newVideo(10);
                            },
                          ),

                          Icon(
                            Icons.double_arrow_sharp,
                            size: 20,
                            color: Colors.white60,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: _height,
                    width: _width,
                    child: _iframeWidget,
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: CustomAppBar(),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
