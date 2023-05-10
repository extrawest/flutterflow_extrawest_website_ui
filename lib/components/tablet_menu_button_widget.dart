import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tablet_menu_button_model.dart';
export 'tablet_menu_button_model.dart';

class TabletMenuButtonWidget extends StatefulWidget {
  const TabletMenuButtonWidget({Key? key}) : super(key: key);

  @override
  _TabletMenuButtonWidgetState createState() => _TabletMenuButtonWidgetState();
}

class _TabletMenuButtonWidgetState extends State<TabletMenuButtonWidget> {
  late TabletMenuButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TabletMenuButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Icon(
        Icons.dehaze,
        color: _model.isHovered ? Color(0xFFFFC50A) : Colors.black,
        size: 24.0,
      ),
      onEnter: ((event) async {
        setState(() => _model.mouseRegionHovered = true);
        setState(() {
          _model.isHovered = true;
        });
      }),
      onExit: ((event) async {
        setState(() => _model.mouseRegionHovered = false);
        setState(() {
          _model.isHovered = false;
        });
      }),
    );
  }
}
