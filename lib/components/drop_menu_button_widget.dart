import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'drop_menu_button_model.dart';
export 'drop_menu_button_model.dart';

class DropMenuButtonWidget extends StatefulWidget {
  const DropMenuButtonWidget({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final String? text;
  final Future<dynamic> Function()? onTap;

  @override
  _DropMenuButtonWidgetState createState() => _DropMenuButtonWidgetState();
}

class _DropMenuButtonWidgetState extends State<DropMenuButtonWidget>
    with TickerProviderStateMixin {
  late DropMenuButtonModel _model;

  var hasContainerTriggered1 = false;
  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 200.ms,
          begin: Offset(1.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: Offset(-6.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropMenuButtonModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (_model.isShowLeadBar)
            ClipRRect(
              child: Container(
                width: 4.0,
                height: 25.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFFC50A),
                ),
              ),
            ).animateOnActionTrigger(
                animationsMap['containerOnActionTriggerAnimation1']!,
                hasBeenTriggered: hasContainerTriggered1),
          Container(
            width: 20.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 180.0,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                  child: Text(
                    widget.text!,
                    textAlign: TextAlign.start,
                    maxLines: 3,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: Color(0xFF969696),
                          fontSize: 16.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ),
              ),
            ).animateOnActionTrigger(
              animationsMap['containerOnActionTriggerAnimation2']!,
            ),
          ),
        ],
      ),
      onEnter: ((event) async {
        setState(() => _model.mouseRegionHovered = true);
        setState(() {
          _model.isShowLeadBar = true;
        });
        if (animationsMap['containerOnActionTriggerAnimation1'] != null) {
          setState(() => hasContainerTriggered1 = true);
          SchedulerBinding.instance.addPostFrameCallback((_) async =>
              await animationsMap['containerOnActionTriggerAnimation1']!
                  .controller
                  .forward(from: 0.0));
        }
        if (animationsMap['containerOnActionTriggerAnimation2'] != null) {
          await animationsMap['containerOnActionTriggerAnimation2']!
              .controller
              .forward(from: 0.0);
        }
      }),
      onExit: ((event) async {
        setState(() => _model.mouseRegionHovered = false);
        setState(() {
          _model.isShowLeadBar = false;
        });
      }),
    );
  }
}
