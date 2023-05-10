import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'services_card_model.dart';
export 'services_card_model.dart';

class ServicesCardWidget extends StatefulWidget {
  const ServicesCardWidget({
    Key? key,
    required this.icon,
    required this.header,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final Widget? icon;
  final String? header;
  final String? text;
  final Future<dynamic> Function()? onTap;

  @override
  _ServicesCardWidgetState createState() => _ServicesCardWidgetState();
}

class _ServicesCardWidgetState extends State<ServicesCardWidget> {
  late ServicesCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServicesCardModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
      child: Container(
        width: MediaQuery.of(context).size.width <= 767.0
            ? (MediaQuery.of(context).size.width * 0.8)
            : ((MediaQuery.of(context).size.width - 60) / 2),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: widget.icon!,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 19.0),
              child: Text(
                widget.header!,
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: Color(0xFF222222),
                      fontSize: 19.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ),
            Text(
              widget.text!,
              textAlign: TextAlign.justify,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: Color(0xFF797979),
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyMediumFamily),
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 19.0),
              child: Text(
                'FIND OUT MORE',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: Color(0xFFFFC50A),
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
