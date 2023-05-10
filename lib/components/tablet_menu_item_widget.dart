import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tablet_menu_item_model.dart';
export 'tablet_menu_item_model.dart';

class TabletMenuItemWidget extends StatefulWidget {
  const TabletMenuItemWidget({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final String? text;
  final Future<dynamic> Function()? onTap;

  @override
  _TabletMenuItemWidgetState createState() => _TabletMenuItemWidgetState();
}

class _TabletMenuItemWidgetState extends State<TabletMenuItemWidget> {
  late TabletMenuItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TabletMenuItemModel());

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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: MouseRegion(
        opaque: false,
        cursor: MouseCursor.defer ?? MouseCursor.defer,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.text!,
                  maxLines: 3,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: _model.isSelected
                            ? Color(0xFFFFC50A)
                            : Color(0xFF8D8D8D),
                        fontSize: 13.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
            ],
          ),
        ),
        onEnter: ((event) async {
          setState(() => _model.mouseRegionHovered = true);
          setState(() {
            _model.isSelected = true;
          });
        }),
        onExit: ((event) async {
          setState(() => _model.mouseRegionHovered = false);
          setState(() {
            _model.isSelected = false;
          });
        }),
      ),
    );
  }
}
