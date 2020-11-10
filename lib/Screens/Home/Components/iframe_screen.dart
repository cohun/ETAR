import 'dart:html';
import 'dart:ui' as ui;
import 'package:etar_app/Screens/Home/Components/app_bar.dart';
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

  @override
  void initState() {
    super.initState();

    _iframeElement.height = '500';
    _iframeElement.width = '500';

     _iframeElement.src = 'https://www.youtube.com/embed/bbPvddL2L7Q';
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
              child: SizedBox(
                height: _height,
                width: _width,
                child: _iframeWidget,
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
