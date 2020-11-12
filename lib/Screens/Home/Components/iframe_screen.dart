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
    "https://www.youtube.com/embed/Bm1o_RgD3LA",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

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

                    ],
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
