import '/components/drop_menu_button_widget.dart';
import '/components/services_card_widget.dart';
import '/components/tablet_menu_button_widget.dart';
import '/components/tablet_menu_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  var hasTextTriggered2 = false;
  var hasRowTriggered = false;
  var hasContainerTriggered1 = false;
  var hasContainerTriggered2 = false;
  var hasContainerTriggered3 = false;
  var hasContainerTriggered4 = false;
  var hasContainerTriggered5 = false;
  var hasContainerTriggered6 = false;
  var hasContainerTriggered7 = false;
  var hasContainerTriggered8 = false;
  var hasContainerTriggered9 = false;
  var hasIconTriggered1 = false;
  var hasIconTriggered2 = false;
  var hasColumnTriggered1 = false;
  var hasIconTriggered3 = false;
  var hasIconTriggered4 = false;
  var hasColumnTriggered2 = false;
  var hasIconTriggered5 = false;
  var hasIconTriggered6 = false;
  var hasColumnTriggered3 = false;
  final animationsMap = {
    'imageOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        BlurEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 200.ms,
          begin: Offset(10.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 50.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 50.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 50.ms,
          duration: 200.ms,
          begin: Offset(0.0, 50.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 200.ms,
          begin: Offset(0.0, 50.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, -40.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, -40.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 1.ms),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, -40.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation9': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: Offset(1.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 6.ms,
          duration: 150.ms,
          begin: Offset(0.0, -100.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'iconOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: 0.25,
          end: 0.0,
        ),
      ],
    ),
    'iconOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: -0.25,
          end: 0.0,
        ),
      ],
    ),
    'columnOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: Offset(1.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 6.ms,
          duration: 150.ms,
          begin: Offset(0.0, -80.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'iconOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: 0.25,
          end: 0.0,
        ),
      ],
    ),
    'iconOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: -0.25,
          end: 0.0,
        ),
      ],
    ),
    'columnOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: Offset(1.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 6.ms,
          duration: 150.ms,
          begin: Offset(0.0, -80.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'iconOnActionTriggerAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: 0.25,
          end: 0.0,
        ),
      ],
    ),
    'iconOnActionTriggerAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: -0.25,
          end: 0.0,
        ),
      ],
    ),
    'columnOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: Offset(1.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 6.ms,
          duration: 150.ms,
          begin: Offset(0.0, -80.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 6000),
        callback: (timer) async {
          setState(() {
            _model.infoIndex = functions.increaseInfoIndex(_model.infoIndex);
          });
          if (animationsMap['imageOnActionTriggerAnimation'] != null) {
            await animationsMap['imageOnActionTriggerAnimation']!
                .controller
                .forward(from: 0.0);
          }
          if (animationsMap['textOnActionTriggerAnimation1'] != null) {
            await animationsMap['textOnActionTriggerAnimation1']!
                .controller
                .forward(from: 0.0);
          }
          if (animationsMap['textOnActionTriggerAnimation2'] != null) {
            setState(() => hasTextTriggered2 = true);
            SchedulerBinding.instance.addPostFrameCallback((_) async =>
                await animationsMap['textOnActionTriggerAnimation2']!
                    .controller
                    .forward(from: 0.0));
          }
          if (animationsMap['rowOnActionTriggerAnimation'] != null) {
            setState(() => hasRowTriggered = true);
            SchedulerBinding.instance.addPostFrameCallback((_) async =>
                await animationsMap['rowOnActionTriggerAnimation']!
                    .controller
                    .forward(from: 0.0));
          }
        },
        startImmediately: true,
      );
    });

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
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: Stack(
            children: [
              Image.network(
                functions.getMainImage(_model.infoIndex),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ).animateOnActionTrigger(
                animationsMap['imageOnActionTriggerAnimation']!,
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        if (MediaQuery.of(context).size.width <=
                            FFAppState().tabletMaxWidth)
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  50.0, 0.0, 50.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 25.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        setState(() {
                                          _model.isShowTabletMenu =
                                              !_model.isShowTabletMenu;
                                        });
                                        if (animationsMap[
                                                'containerOnActionTriggerAnimation9'] !=
                                            null) {
                                          setState(() =>
                                              hasContainerTriggered9 = true);
                                          SchedulerBinding.instance
                                              .addPostFrameCallback((_) async =>
                                                  await animationsMap[
                                                          'containerOnActionTriggerAnimation9']!
                                                      .controller
                                                      .forward(from: 0.0));
                                        }
                                      },
                                      child: wrapWithModel(
                                        model: _model.tabletMenuButtonModel,
                                        updateCallback: () => setState(() {}),
                                        child: TabletMenuButtonWidget(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 10.0),
                                    child: Image.asset(
                                      'assets/images/logo-1.png',
                                      width: 150.0,
                                      height: 60.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 25.0, 0.0, 0.0),
                                    child: MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 60.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Colors.black,
                                                  size: 24.0,
                                                ),
                                                if (_model.language == 'EN')
                                                  Image.asset(
                                                    'assets/images/en.png',
                                                    width: 27.0,
                                                    height: 18.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                if (_model.language == 'DE')
                                                  Image.asset(
                                                    'assets/images/de.png',
                                                    width: 27.0,
                                                    height: 18.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                              ],
                                            ),
                                          ),
                                          if (_model.isShowLenguageSelector)
                                            Container(
                                              width: 60.0,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    Icons.arrow_drop_down,
                                                    color: Colors.white,
                                                    size: 24.0,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        if (_model.language ==
                                                            'DE')
                                                          Image.asset(
                                                            'assets/images/en.png',
                                                            width: 27.0,
                                                            height: 18.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        if (_model.language ==
                                                            'EN')
                                                          Image.asset(
                                                            'assets/images/de.png',
                                                            width: 27.0,
                                                            height: 18.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                        ],
                                      ),
                                      onEnter: ((event) async {
                                        setState(() =>
                                            _model.languageHovered1 = true);
                                        setState(() {
                                          _model.isShowLenguageSelector = true;
                                        });
                                      }),
                                      onExit: ((event) async {
                                        setState(() =>
                                            _model.languageHovered1 = false);
                                        setState(() {
                                          _model.isShowLenguageSelector = false;
                                        });
                                      }),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              if ((MediaQuery.of(context).size.width >
                                      FFAppState().tabletMaxWidth) &&
                                  responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                  ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Image.asset(
                                    'assets/images/extrawest-horizontal-logo-invert.png',
                                    width: 300.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 180.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ))
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (_model.infoIndex == 0) {
                                            setState(() {
                                              _model.infoIndex = 3;
                                            });
                                          } else {
                                            setState(() {
                                              _model.infoIndex =
                                                  _model.infoIndex + -1;
                                            });
                                          }

                                          if (animationsMap[
                                                  'imageOnActionTriggerAnimation'] !=
                                              null) {
                                            await animationsMap[
                                                    'imageOnActionTriggerAnimation']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                          if (animationsMap[
                                                  'textOnActionTriggerAnimation1'] !=
                                              null) {
                                            await animationsMap[
                                                    'textOnActionTriggerAnimation1']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                          if (animationsMap[
                                                  'textOnActionTriggerAnimation2'] !=
                                              null) {
                                            setState(
                                                () => hasTextTriggered2 = true);
                                            SchedulerBinding.instance
                                                .addPostFrameCallback((_) async =>
                                                    await animationsMap[
                                                            'textOnActionTriggerAnimation2']!
                                                        .controller
                                                        .forward(from: 0.0));
                                          }
                                          if (animationsMap[
                                                  'rowOnActionTriggerAnimation'] !=
                                              null) {
                                            setState(
                                                () => hasRowTriggered = true);
                                            SchedulerBinding.instance
                                                .addPostFrameCallback((_) async =>
                                                    await animationsMap[
                                                            'rowOnActionTriggerAnimation']!
                                                        .controller
                                                        .forward(from: 0.0));
                                          }
                                        },
                                        child: Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                          child: Icon(
                                            Icons.chevron_left,
                                            color: Colors.white,
                                            size: 50.0,
                                          ),
                                        ),
                                      ),
                                    Expanded(
                                      child: Container(
                                        width: 100.0,
                                        height: 600.0,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 132.0, 20.0, 0.0),
                                              child: AutoSizeText(
                                                functions.getMainText(
                                                    _model.infoIndex),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Raleway',
                                                          color: Colors.white,
                                                          fontSize: () {
                                                            if (MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width <=
                                                                777.0) {
                                                              return (MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  46 /
                                                                  500);
                                                            } else if (MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width <=
                                                                1049.0) {
                                                              return (MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  65 /
                                                                  1000);
                                                            } else {
                                                              return 74.0;
                                                            }
                                                          }(),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'textOnActionTriggerAnimation1']!,
                                              ),
                                            ),
                                            if (functions.getAdditionalText(
                                                    _model.infoIndex) !=
                                                '')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 40.0, 0.0, 0.0),
                                                child: AutoSizeText(
                                                  functions.getAdditionalText(
                                                      _model.infoIndex),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color: Colors.white,
                                                        fontSize: 22.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ).animateOnActionTrigger(
                                                    animationsMap[
                                                        'textOnActionTriggerAnimation2']!,
                                                    hasBeenTriggered:
                                                        hasTextTriggered2),
                                              ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 80.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 52.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFFFC50A),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                6.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                6.0),
                                                        topRight:
                                                            Radius.circular(
                                                                0.0),
                                                      ),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    30.0,
                                                                    0.0,
                                                                    30.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Find Out More',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 56.0,
                                                    height: 52.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xE6FFC50A),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                6.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        topRight:
                                                            Radius.circular(
                                                                6.0),
                                                      ),
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: FaIcon(
                                                      FontAwesomeIcons
                                                          .arrowAltCircleRight,
                                                      color: Colors.white,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ],
                                              ).animateOnActionTrigger(
                                                  animationsMap[
                                                      'rowOnActionTriggerAnimation']!,
                                                  hasBeenTriggered:
                                                      hasRowTriggered),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ))
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (_model.infoIndex == 3) {
                                            setState(() {
                                              _model.infoIndex = 0;
                                            });
                                          } else {
                                            setState(() {
                                              _model.infoIndex =
                                                  _model.infoIndex + 1;
                                            });
                                          }

                                          if (animationsMap[
                                                  'imageOnActionTriggerAnimation'] !=
                                              null) {
                                            await animationsMap[
                                                    'imageOnActionTriggerAnimation']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                          if (animationsMap[
                                                  'textOnActionTriggerAnimation1'] !=
                                              null) {
                                            await animationsMap[
                                                    'textOnActionTriggerAnimation1']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                          if (animationsMap[
                                                  'textOnActionTriggerAnimation2'] !=
                                              null) {
                                            setState(
                                                () => hasTextTriggered2 = true);
                                            SchedulerBinding.instance
                                                .addPostFrameCallback((_) async =>
                                                    await animationsMap[
                                                            'textOnActionTriggerAnimation2']!
                                                        .controller
                                                        .forward(from: 0.0));
                                          }
                                          if (animationsMap[
                                                  'rowOnActionTriggerAnimation'] !=
                                              null) {
                                            setState(
                                                () => hasRowTriggered = true);
                                            SchedulerBinding.instance
                                                .addPostFrameCallback((_) async =>
                                                    await animationsMap[
                                                            'rowOnActionTriggerAnimation']!
                                                        .controller
                                                        .forward(from: 0.0));
                                          }
                                        },
                                        child: Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                          child: Icon(
                                            Icons.chevron_right,
                                            color: Colors.white,
                                            size: 50.0,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              if (MediaQuery.of(context).size.width >
                                  FFAppState().tabletMaxWidth)
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Image.network(
                                          'https://www.extrawest.com/wp-content/uploads/2017/09/top_rated1.png',
                                          width: 132.0,
                                          height: 57.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 14.0, 0.0, 0.0),
                                        child: MouseRegion(
                                          opaque: false,
                                          cursor: MouseCursor.defer ??
                                              MouseCursor.defer,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 60.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.transparent,
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.language_outlined,
                                                      color: Colors.white,
                                                      size: 26.0,
                                                    ),
                                                    Text(
                                                      _model.language,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 16.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              if (_model.isShowLenguageSelector)
                                                Container(
                                                  width: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                                0.0, 12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Image.asset(
                                                          'assets/images/en.png',
                                                          width: 27.0,
                                                          height: 18.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                        Container(
                                                          width: 60.0,
                                                          height: 12.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                        ),
                                                        Image.asset(
                                                          'assets/images/de.png',
                                                          width: 27.0,
                                                          height: 18.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                          onEnter: ((event) async {
                                            setState(() =>
                                                _model.languageHovered2 = true);
                                            setState(() {
                                              _model.isShowLenguageSelector =
                                                  true;
                                            });
                                          }),
                                          onExit: ((event) async {
                                            setState(() => _model
                                                .languageHovered2 = false);
                                            setState(() {
                                              _model.isShowLenguageSelector =
                                                  false;
                                            });
                                          }),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30.0,
                                            borderWidth: 0.0,
                                            buttonSize: 50.0,
                                            icon: Icon(
                                              Icons.search_outlined,
                                              color: Colors.white,
                                              size: 30.0,
                                            ),
                                            onPressed: () {
                                              print('SearchButton pressed ...');
                                            },
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 14.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            SizedBox(
                                              height: 30.0,
                                              child: VerticalDivider(
                                                width: 10.0,
                                                thickness: 1.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: Text(
                                                'Get a Quote',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 18.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              if (MediaQuery.of(context).size.width >
                                  FFAppState().tabletMaxWidth)
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 404.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        MouseRegion(
                                          opaque: false,
                                          cursor: MouseCursor.defer ??
                                              MouseCursor.defer,
                                          child: Stack(
                                            children: [
                                              if (_model.isContactUsMenuShow)
                                                Container(
                                                  width: 130.0,
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFFFC50A),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                  ),
                                                ).animateOnActionTrigger(
                                                    animationsMap[
                                                        'containerOnActionTriggerAnimation1']!,
                                                    hasBeenTriggered:
                                                        hasContainerTriggered1),
                                              Container(
                                                width: 130.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Contact Us',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: Colors.white,
                                                          fontSize: 18.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          onEnter: ((event) async {
                                            setState(() => _model
                                                .mouseRegionHovered1 = true);
                                            setState(() {
                                              _model.isPortfolioMenuShow =
                                                  false;
                                              _model.isContactUsMenuShow = true;
                                            });
                                            if (animationsMap[
                                                    'containerOnActionTriggerAnimation1'] !=
                                                null) {
                                              setState(() =>
                                                  hasContainerTriggered1 =
                                                      true);
                                              SchedulerBinding.instance
                                                  .addPostFrameCallback((_) async =>
                                                      await animationsMap[
                                                              'containerOnActionTriggerAnimation1']!
                                                          .controller
                                                          .forward(from: 0.0));
                                            }
                                          }),
                                          onExit: ((event) async {
                                            setState(() => _model
                                                .mouseRegionHovered1 = false);
                                            setState(() {
                                              _model.isContactUsMenuShow =
                                                  false;
                                            });
                                          }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              if (MediaQuery.of(context).size.width >
                                  FFAppState().tabletMaxWidth)
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 451.0, 0.0),
                                    child: Container(
                                      width: 215.0,
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, -1.0),
                                        children: [
                                          MouseRegion(
                                            opaque: false,
                                            cursor: MouseCursor.defer ??
                                                MouseCursor.defer,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                MouseRegion(
                                                  opaque: false,
                                                  cursor: SystemMouseCursors
                                                          .click ??
                                                      MouseCursor.defer,
                                                  child: Stack(
                                                    children: [
                                                      if (_model
                                                          .isPortfolioMenuShow)
                                                        Container(
                                                          width: 130.0,
                                                          height: 50.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFFFC50A),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6.0),
                                                          ),
                                                        ).animateOnActionTrigger(
                                                            animationsMap[
                                                                'containerOnActionTriggerAnimation2']!,
                                                            hasBeenTriggered:
                                                                hasContainerTriggered2),
                                                      Container(
                                                        width: 130.0,
                                                        height: 50.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors
                                                              .transparent,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.0),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.05),
                                                          child: Text(
                                                            'Portfolio',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  onEnter: ((event) async {
                                                    setState(() => _model
                                                            .mouseRegionHovered3 =
                                                        true);
                                                    setState(() {
                                                      _model.isPortfolioMenuShow =
                                                          true;
                                                      _model.isExpertiseMenuShow =
                                                          false;
                                                    });
                                                    if (animationsMap[
                                                            'containerOnActionTriggerAnimation3'] !=
                                                        null) {
                                                      setState(() =>
                                                          hasContainerTriggered3 =
                                                              true);
                                                      SchedulerBinding.instance
                                                          .addPostFrameCallback((_) async =>
                                                              await animationsMap[
                                                                      'containerOnActionTriggerAnimation3']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0));
                                                    }
                                                    if (animationsMap[
                                                            'containerOnActionTriggerAnimation2'] !=
                                                        null) {
                                                      setState(() =>
                                                          hasContainerTriggered2 =
                                                              true);
                                                      SchedulerBinding.instance
                                                          .addPostFrameCallback((_) async =>
                                                              await animationsMap[
                                                                      'containerOnActionTriggerAnimation2']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0));
                                                    }
                                                  }),
                                                  onExit: ((event) async {
                                                    setState(() => _model
                                                            .mouseRegionHovered3 =
                                                        false);
                                                  }),
                                                ),
                                                if (_model.isPortfolioMenuShow)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 40.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 215.0,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    10.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          10.0),
                                                              child: Container(
                                                                width: 215.0,
                                                                height: 7.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFFFC50A),
                                                                ),
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .dropMenuButtonModel1,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  DropMenuButtonWidget(
                                                                text:
                                                                    'By Domain Area',
                                                                onTap:
                                                                    () async {},
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .dropMenuButtonModel2,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  DropMenuButtonWidget(
                                                                text:
                                                                    'By Technologies',
                                                                onTap:
                                                                    () async {},
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'containerOnActionTriggerAnimation3']!,
                                                        hasBeenTriggered:
                                                            hasContainerTriggered3),
                                                  ),
                                              ],
                                            ),
                                            onEnter: ((event) async {
                                              setState(() => _model
                                                  .mouseRegionHovered2 = true);
                                            }),
                                            onExit: ((event) async {
                                              setState(() => _model
                                                  .mouseRegionHovered2 = false);
                                              setState(() {
                                                _model.isPortfolioMenuShow =
                                                    false;
                                              });
                                            }),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              if (MediaQuery.of(context).size.width >
                                  FFAppState().tabletMaxWidth)
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 583.0, 0.0),
                                    child: Container(
                                      width: 215.0,
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, -1.0),
                                        children: [
                                          MouseRegion(
                                            opaque: false,
                                            cursor: MouseCursor.defer ??
                                                MouseCursor.defer,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                MouseRegion(
                                                  opaque: false,
                                                  cursor: MouseCursor.defer ??
                                                      MouseCursor.defer,
                                                  child: Stack(
                                                    children: [
                                                      if (_model
                                                          .isExpertiseMenuShow)
                                                        Container(
                                                          width: 130.0,
                                                          height: 50.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFFFC50A),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6.0),
                                                          ),
                                                        ).animateOnActionTrigger(
                                                            animationsMap[
                                                                'containerOnActionTriggerAnimation4']!,
                                                            hasBeenTriggered:
                                                                hasContainerTriggered4),
                                                      Container(
                                                        width: 130.0,
                                                        height: 50.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors
                                                              .transparent,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.0),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.05),
                                                          child: Text(
                                                            'Expertise',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  onEnter: ((event) async {
                                                    setState(() => _model
                                                            .mouseRegionHovered5 =
                                                        true);
                                                    setState(() {
                                                      _model.isExpertiseMenuShow =
                                                          true;
                                                      _model.isServicesMenuShow =
                                                          false;
                                                    });
                                                    if (animationsMap[
                                                            'containerOnActionTriggerAnimation5'] !=
                                                        null) {
                                                      setState(() =>
                                                          hasContainerTriggered5 =
                                                              true);
                                                      SchedulerBinding.instance
                                                          .addPostFrameCallback((_) async =>
                                                              await animationsMap[
                                                                      'containerOnActionTriggerAnimation5']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0));
                                                    }
                                                    if (animationsMap[
                                                            'containerOnActionTriggerAnimation4'] !=
                                                        null) {
                                                      setState(() =>
                                                          hasContainerTriggered4 =
                                                              true);
                                                      SchedulerBinding.instance
                                                          .addPostFrameCallback((_) async =>
                                                              await animationsMap[
                                                                      'containerOnActionTriggerAnimation4']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0));
                                                    }
                                                  }),
                                                  onExit: ((event) async {
                                                    setState(() => _model
                                                            .mouseRegionHovered5 =
                                                        false);
                                                  }),
                                                ),
                                                if (_model.isExpertiseMenuShow)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 40.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 215.0,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    10.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          10.0),
                                                              child: Container(
                                                                width: 215.0,
                                                                height: 7.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFFFC50A),
                                                                ),
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .dropMenuButtonModel3,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  DropMenuButtonWidget(
                                                                text:
                                                                    'Fleet Management Software',
                                                                onTap:
                                                                    () async {},
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .dropMenuButtonModel4,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  DropMenuButtonWidget(
                                                                text:
                                                                    'Healthcare and Medical Claim Management solutions',
                                                                onTap:
                                                                    () async {},
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .dropMenuButtonModel5,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  DropMenuButtonWidget(
                                                                text:
                                                                    'E-commerce',
                                                                onTap:
                                                                    () async {},
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .dropMenuButtonModel6,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  DropMenuButtonWidget(
                                                                text:
                                                                    'E-learning',
                                                                onTap:
                                                                    () async {},
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .dropMenuButtonModel7,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  DropMenuButtonWidget(
                                                                text: 'Finance',
                                                                onTap:
                                                                    () async {},
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .dropMenuButtonModel8,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  DropMenuButtonWidget(
                                                                text:
                                                                    'WordPress',
                                                                onTap:
                                                                    () async {},
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'containerOnActionTriggerAnimation5']!,
                                                        hasBeenTriggered:
                                                            hasContainerTriggered5),
                                                  ),
                                              ],
                                            ),
                                            onEnter: ((event) async {
                                              setState(() => _model
                                                  .mouseRegionHovered4 = true);
                                              setState(() {
                                                _model.isExpertiseMenuShow =
                                                    true;
                                              });
                                            }),
                                            onExit: ((event) async {
                                              setState(() => _model
                                                  .mouseRegionHovered4 = false);
                                              setState(() {
                                                _model.isExpertiseMenuShow =
                                                    false;
                                              });
                                            }),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              if (MediaQuery.of(context).size.width >
                                  FFAppState().tabletMaxWidth)
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 715.0, 0.0),
                                    child: Container(
                                      width: 215.0,
                                      child: Stack(
                                        children: [
                                          MouseRegion(
                                            opaque: false,
                                            cursor: MouseCursor.defer ??
                                                MouseCursor.defer,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                MouseRegion(
                                                  opaque: false,
                                                  cursor: MouseCursor.defer ??
                                                      MouseCursor.defer,
                                                  child: Stack(
                                                    children: [
                                                      if (_model
                                                          .isServicesMenuShow)
                                                        Container(
                                                          width: 130.0,
                                                          height: 50.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFFFC50A),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6.0),
                                                          ),
                                                        ).animateOnActionTrigger(
                                                            animationsMap[
                                                                'containerOnActionTriggerAnimation6']!,
                                                            hasBeenTriggered:
                                                                hasContainerTriggered6),
                                                      Container(
                                                        width: 130.0,
                                                        height: 50.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors
                                                              .transparent,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.0),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.05),
                                                          child: Text(
                                                            'Services',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  onEnter: ((event) async {
                                                    setState(() => _model
                                                            .mouseRegionHovered7 =
                                                        true);
                                                    if (!_model
                                                        .isServicesMenuShow) {
                                                      setState(() {
                                                        _model.isServicesMenuShow =
                                                            true;
                                                      });
                                                      if (animationsMap[
                                                              'containerOnActionTriggerAnimation7'] !=
                                                          null) {
                                                        setState(() =>
                                                            hasContainerTriggered7 =
                                                                true);
                                                        SchedulerBinding
                                                            .instance
                                                            .addPostFrameCallback((_) async =>
                                                                await animationsMap[
                                                                        'containerOnActionTriggerAnimation7']!
                                                                    .controller
                                                                    .forward(
                                                                        from:
                                                                            0.0));
                                                      }
                                                      if (animationsMap[
                                                              'containerOnActionTriggerAnimation6'] !=
                                                          null) {
                                                        setState(() =>
                                                            hasContainerTriggered6 =
                                                                true);
                                                        SchedulerBinding
                                                            .instance
                                                            .addPostFrameCallback((_) async =>
                                                                await animationsMap[
                                                                        'containerOnActionTriggerAnimation6']!
                                                                    .controller
                                                                    .forward(
                                                                        from:
                                                                            0.0));
                                                      }
                                                    }
                                                  }),
                                                  onExit: ((event) async {
                                                    setState(() => _model
                                                            .mouseRegionHovered7 =
                                                        false);
                                                  }),
                                                ),
                                                if (_model.isServicesMenuShow)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 40.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 215.0,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    10.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          10.0),
                                                              child: Container(
                                                                width: 215.0,
                                                                height: 7.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFFFC50A),
                                                                ),
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .dropMenuButtonModel9,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  DropMenuButtonWidget(
                                                                text:
                                                                    'Software Development',
                                                                onTap:
                                                                    () async {},
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .dropMenuButtonModel10,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  DropMenuButtonWidget(
                                                                text:
                                                                    'Mobile  Applications Development',
                                                                onTap:
                                                                    () async {},
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .dropMenuButtonModel11,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  DropMenuButtonWidget(
                                                                text:
                                                                    'Testing &amp; Quality  Assurance',
                                                                onTap:
                                                                    () async {},
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .dropMenuButtonModel12,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  DropMenuButtonWidget(
                                                                text:
                                                                    'Maintenance, Enhancements, and Support',
                                                                onTap:
                                                                    () async {},
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'containerOnActionTriggerAnimation7']!,
                                                        hasBeenTriggered:
                                                            hasContainerTriggered7),
                                                  ),
                                              ],
                                            ),
                                            onEnter: ((event) async {
                                              setState(() => _model
                                                  .mouseRegionHovered6 = true);
                                            }),
                                            onExit: ((event) async {
                                              setState(() => _model
                                                  .mouseRegionHovered6 = false);
                                              setState(() {
                                                _model.isServicesMenuShow =
                                                    false;
                                              });
                                            }),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              if (MediaQuery.of(context).size.width >
                                  FFAppState().tabletMaxWidth)
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 932.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Stack(
                                          children: [
                                            if (_model.isMainMenuShow)
                                              Container(
                                                width: 130.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFFC50A),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                              ).animateOnActionTrigger(
                                                  animationsMap[
                                                      'containerOnActionTriggerAnimation8']!,
                                                  hasBeenTriggered:
                                                      hasContainerTriggered8),
                                            Container(
                                              width: 130.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.05),
                                                child: Text(
                                                  'Main',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        if ((MediaQuery.of(context).size.width <=
                                FFAppState().tabletMaxWidth) &&
                            _model.isShowTabletMenu)
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  65.0, 0.0, 65.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  wrapWithModel(
                                    model: _model.tabletMenuItemModel1,
                                    updateCallback: () => setState(() {}),
                                    child: TabletMenuItemWidget(
                                      text: 'Main',
                                      onTap: () async {},
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent4,
                                  ),
                                  Stack(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    children: [
                                      wrapWithModel(
                                        model: _model.tabletMenuItemModel2,
                                        updateCallback: () => setState(() {}),
                                        child: TabletMenuItemWidget(
                                          text: 'Services',
                                          onTap: () async {},
                                        ),
                                      ),
                                      if (!_model.isServicesMenuShow)
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setState(() {
                                              _model.isServicesMenuShow = true;
                                            });
                                            if (animationsMap[
                                                    'iconOnActionTriggerAnimation2'] !=
                                                null) {
                                              setState(() =>
                                                  hasIconTriggered2 = true);
                                              SchedulerBinding.instance
                                                  .addPostFrameCallback((_) async =>
                                                      await animationsMap[
                                                              'iconOnActionTriggerAnimation2']!
                                                          .controller
                                                          .forward(from: 0.0));
                                            }
                                            if (animationsMap[
                                                    'columnOnActionTriggerAnimation1'] !=
                                                null) {
                                              setState(() =>
                                                  hasColumnTriggered1 = true);
                                              SchedulerBinding.instance
                                                  .addPostFrameCallback((_) async =>
                                                      await animationsMap[
                                                              'columnOnActionTriggerAnimation1']!
                                                          .controller
                                                          .forward(from: 0.0));
                                            }
                                          },
                                          child: Icon(
                                            Icons.chevron_right,
                                            color: Color(0xFF8D8D8D),
                                            size: 24.0,
                                          ),
                                        ).animateOnActionTrigger(
                                            animationsMap[
                                                'iconOnActionTriggerAnimation1']!,
                                            hasBeenTriggered:
                                                hasIconTriggered1),
                                      if (_model.isServicesMenuShow)
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setState(() {
                                              _model.isServicesMenuShow = false;
                                            });
                                            if (animationsMap[
                                                    'iconOnActionTriggerAnimation1'] !=
                                                null) {
                                              setState(() =>
                                                  hasIconTriggered1 = true);
                                              SchedulerBinding.instance
                                                  .addPostFrameCallback((_) async =>
                                                      await animationsMap[
                                                              'iconOnActionTriggerAnimation1']!
                                                          .controller
                                                          .forward(from: 0.0));
                                            }
                                          },
                                          child: Icon(
                                            Icons.keyboard_arrow_down_outlined,
                                            color: Color(0xFF8D8D8D),
                                            size: 24.0,
                                          ),
                                        ).animateOnActionTrigger(
                                            animationsMap[
                                                'iconOnActionTriggerAnimation2']!,
                                            hasBeenTriggered:
                                                hasIconTriggered2),
                                    ],
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent4,
                                  ),
                                  if (_model.isServicesMenuShow)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          30.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.tabletMenuItemModel3,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabletMenuItemWidget(
                                              text: 'Software Development',
                                              onTap: () async {},
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                          wrapWithModel(
                                            model: _model.tabletMenuItemModel4,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabletMenuItemWidget(
                                              text:
                                                  'Mobile Applications Development',
                                              onTap: () async {},
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                          wrapWithModel(
                                            model: _model.tabletMenuItemModel5,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabletMenuItemWidget(
                                              text:
                                                  'Testing & Quality Assurance',
                                              onTap: () async {},
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                          wrapWithModel(
                                            model: _model.tabletMenuItemModel6,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabletMenuItemWidget(
                                              text:
                                                  'Maintenance, Enhancements, and Support',
                                              onTap: () async {},
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                        ],
                                      ).animateOnActionTrigger(
                                          animationsMap[
                                              'columnOnActionTriggerAnimation1']!,
                                          hasBeenTriggered:
                                              hasColumnTriggered1),
                                    ),
                                  Stack(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    children: [
                                      wrapWithModel(
                                        model: _model.tabletMenuItemModel7,
                                        updateCallback: () => setState(() {}),
                                        child: TabletMenuItemWidget(
                                          text: 'Expertise',
                                          onTap: () async {},
                                        ),
                                      ),
                                      if (!_model.isExpertiseMenuShow)
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setState(() {
                                              _model.isExpertiseMenuShow = true;
                                            });
                                            if (animationsMap[
                                                    'iconOnActionTriggerAnimation4'] !=
                                                null) {
                                              setState(() =>
                                                  hasIconTriggered4 = true);
                                              SchedulerBinding.instance
                                                  .addPostFrameCallback((_) async =>
                                                      await animationsMap[
                                                              'iconOnActionTriggerAnimation4']!
                                                          .controller
                                                          .forward(from: 0.0));
                                            }
                                            if (animationsMap[
                                                    'columnOnActionTriggerAnimation2'] !=
                                                null) {
                                              setState(() =>
                                                  hasColumnTriggered2 = true);
                                              SchedulerBinding.instance
                                                  .addPostFrameCallback((_) async =>
                                                      await animationsMap[
                                                              'columnOnActionTriggerAnimation2']!
                                                          .controller
                                                          .forward(from: 0.0));
                                            }
                                          },
                                          child: Icon(
                                            Icons.chevron_right,
                                            color: Color(0xFF8D8D8D),
                                            size: 24.0,
                                          ),
                                        ).animateOnActionTrigger(
                                            animationsMap[
                                                'iconOnActionTriggerAnimation3']!,
                                            hasBeenTriggered:
                                                hasIconTriggered3),
                                      if (_model.isExpertiseMenuShow)
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setState(() {
                                              _model.isExpertiseMenuShow =
                                                  false;
                                            });
                                            if (animationsMap[
                                                    'iconOnActionTriggerAnimation3'] !=
                                                null) {
                                              setState(() =>
                                                  hasIconTriggered3 = true);
                                              SchedulerBinding.instance
                                                  .addPostFrameCallback((_) async =>
                                                      await animationsMap[
                                                              'iconOnActionTriggerAnimation3']!
                                                          .controller
                                                          .forward(from: 0.0));
                                            }
                                          },
                                          child: Icon(
                                            Icons.keyboard_arrow_down_outlined,
                                            color: Color(0xFF8D8D8D),
                                            size: 24.0,
                                          ),
                                        ).animateOnActionTrigger(
                                            animationsMap[
                                                'iconOnActionTriggerAnimation4']!,
                                            hasBeenTriggered:
                                                hasIconTriggered4),
                                    ],
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent4,
                                  ),
                                  if (_model.isExpertiseMenuShow)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          30.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.tabletMenuItemModel8,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabletMenuItemWidget(
                                              text: 'Fleet Management Software',
                                              onTap: () async {},
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                          wrapWithModel(
                                            model: _model.tabletMenuItemModel9,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabletMenuItemWidget(
                                              text:
                                                  'Healthcare and Medical Claim Management solutions',
                                              onTap: () async {},
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                          wrapWithModel(
                                            model: _model.tabletMenuItemModel10,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabletMenuItemWidget(
                                              text: 'E-commerce',
                                              onTap: () async {},
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                          wrapWithModel(
                                            model: _model.tabletMenuItemModel11,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabletMenuItemWidget(
                                              text: 'E-learning',
                                              onTap: () async {},
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                          wrapWithModel(
                                            model: _model.tabletMenuItemModel12,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabletMenuItemWidget(
                                              text: 'Finance',
                                              onTap: () async {},
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                          wrapWithModel(
                                            model: _model.tabletMenuItemModel13,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabletMenuItemWidget(
                                              text: 'WordPress',
                                              onTap: () async {},
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                        ],
                                      ).animateOnActionTrigger(
                                          animationsMap[
                                              'columnOnActionTriggerAnimation2']!,
                                          hasBeenTriggered:
                                              hasColumnTriggered2),
                                    ),
                                  Stack(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    children: [
                                      wrapWithModel(
                                        model: _model.tabletMenuItemModel14,
                                        updateCallback: () => setState(() {}),
                                        child: TabletMenuItemWidget(
                                          text: 'Portfolio',
                                          onTap: () async {},
                                        ),
                                      ),
                                      if (!_model.isPortfolioMenuShow)
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setState(() {
                                              _model.isPortfolioMenuShow = true;
                                            });
                                            if (animationsMap[
                                                    'iconOnActionTriggerAnimation6'] !=
                                                null) {
                                              setState(() =>
                                                  hasIconTriggered6 = true);
                                              SchedulerBinding.instance
                                                  .addPostFrameCallback((_) async =>
                                                      await animationsMap[
                                                              'iconOnActionTriggerAnimation6']!
                                                          .controller
                                                          .forward(from: 0.0));
                                            }
                                            if (animationsMap[
                                                    'columnOnActionTriggerAnimation3'] !=
                                                null) {
                                              setState(() =>
                                                  hasColumnTriggered3 = true);
                                              SchedulerBinding.instance
                                                  .addPostFrameCallback((_) async =>
                                                      await animationsMap[
                                                              'columnOnActionTriggerAnimation3']!
                                                          .controller
                                                          .forward(from: 0.0));
                                            }
                                          },
                                          child: Icon(
                                            Icons.chevron_right,
                                            color: Color(0xFF8D8D8D),
                                            size: 24.0,
                                          ),
                                        ).animateOnActionTrigger(
                                            animationsMap[
                                                'iconOnActionTriggerAnimation5']!,
                                            hasBeenTriggered:
                                                hasIconTriggered5),
                                      if (_model.isPortfolioMenuShow)
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setState(() {
                                              _model.isPortfolioMenuShow =
                                                  false;
                                            });
                                            if (animationsMap[
                                                    'iconOnActionTriggerAnimation5'] !=
                                                null) {
                                              setState(() =>
                                                  hasIconTriggered5 = true);
                                              SchedulerBinding.instance
                                                  .addPostFrameCallback((_) async =>
                                                      await animationsMap[
                                                              'iconOnActionTriggerAnimation5']!
                                                          .controller
                                                          .forward(from: 0.0));
                                            }
                                          },
                                          child: Icon(
                                            Icons.keyboard_arrow_down_outlined,
                                            color: Color(0xFF8D8D8D),
                                            size: 24.0,
                                          ),
                                        ).animateOnActionTrigger(
                                            animationsMap[
                                                'iconOnActionTriggerAnimation6']!,
                                            hasBeenTriggered:
                                                hasIconTriggered6),
                                    ],
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent4,
                                  ),
                                  if (_model.isPortfolioMenuShow)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          30.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.tabletMenuItemModel15,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabletMenuItemWidget(
                                              text: 'By Domain Area',
                                              onTap: () async {},
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                          wrapWithModel(
                                            model: _model.tabletMenuItemModel16,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabletMenuItemWidget(
                                              text: 'By Technologies',
                                              onTap: () async {},
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                        ],
                                      ).animateOnActionTrigger(
                                          animationsMap[
                                              'columnOnActionTriggerAnimation3']!,
                                          hasBeenTriggered:
                                              hasColumnTriggered3),
                                    ),
                                  wrapWithModel(
                                    model: _model.tabletMenuItemModel17,
                                    updateCallback: () => setState(() {}),
                                    child: TabletMenuItemWidget(
                                      text: 'Contact Us',
                                      onTap: () async {},
                                    ),
                                  ),
                                  Divider(
                                    thickness: 0.0,
                                    color: Colors.transparent,
                                  ),
                                ],
                              ),
                            ),
                          ).animateOnActionTrigger(
                              animationsMap[
                                  'containerOnActionTriggerAnimation9']!,
                              hasBeenTriggered: hasContainerTriggered9),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 70.0, 0.0, 35.0),
                                      child: Text(
                                        'Extrawest, software development company',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color: Color(0xFF202020),
                                              fontSize: 34.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 23.0),
                                      child: Text(
                                        'Extrawest is an information technology services company that provides software development, outsourcing and outstaffing to customers globally. Over the last decade, we have built a professional development team in Ukraine that deals with technical challenges of various complexity level.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color: Color(0xFF797979),
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 70.0),
                                      child: Text(
                                        'Being an IT services company with a team of more than 100 experienced software engineers, analysts and designers we are capable to to deliver the solution that your company requires on time and budget. From creation of a simple website to a nation wide enterprise solution – we are here for you. Extrawest is aimed at turning your ideas into effective software products.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color: Color(0xFF797979),
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 111.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF454545),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 70.0, 0.0, 0.0),
                                      child: Text(
                                        'Outsourcing Software Development Services',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color: Color(0xFF202020),
                                              fontSize: 34.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 35.0, 0.0, 70.0),
                                      child: Text(
                                        'Whether you need a custom-built software or a mobile application, Extrawest will be happy to help, create, implement and support it for you. We are passionate about guiding our clients expertly through all phases of the design and construction processes, from concept and planning to development and deployment.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color: Color(0xFF797979),
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                alignment: AlignmentDirectional(
                                    0.050000000000000044, 0.0),
                                child: Wrap(
                                  spacing: 0.0,
                                  runSpacing: 0.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    wrapWithModel(
                                      model: _model.servicesCardModel1,
                                      updateCallback: () => setState(() {}),
                                      child: ServicesCardWidget(
                                        icon: Icon(
                                          Icons.desktop_mac_outlined,
                                          color: Color(0xFFFFC50A),
                                          size: 100.0,
                                        ),
                                        header: 'CUSTOM SOFTWARE\nDEVELOPMENT',
                                        text:
                                            'Responsive front-end and back-end of any complexity, 3D modeling and graphic design, document workflow solution and e-commerce shop – Extrawest has considerable experience in delivering stellar software applications for every client. We are your full-stack team that you can rely on in building your idea from scratch.',
                                        onTap: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.servicesCardModel2,
                                      updateCallback: () => setState(() {}),
                                      child: ServicesCardWidget(
                                        icon: FaIcon(
                                          FontAwesomeIcons.code,
                                          color: Color(0xFFFFC50A),
                                          size: 100.0,
                                        ),
                                        header:
                                            'MOBILE APPLICATIONS\nDEVELOPMENT',
                                        text:
                                            'As a well-reputed IT company, Extrawest delivers non-trivial products tailored to meet your exact needs. We have uncompromising experience in building Android and iOS apps. With an in-depth analysis, proof of concept, and award-winning UI/UX design, we will turn your ideas into reality.',
                                        onTap: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.servicesCardModel3,
                                      updateCallback: () => setState(() {}),
                                      child: ServicesCardWidget(
                                        icon: Icon(
                                          Icons.settings_sharp,
                                          color: Color(0xFFFFC50A),
                                          size: 100.0,
                                        ),
                                        header: 'TESTING & QUALITY\nASSURANCE',
                                        text:
                                            'Once your idea has been polished to a ready-to-use product, our skilled QA engineers are here to serve you. Our core QA & testing expertise includes both manual and automated testing, functional and non-functional testing such as security, usability, and compatibility, as well as acceptance and regression testing types. Like most progressive information technology companies, we use cutting-edge technologies, namely JIRA, Bugzilla, and Selenium to ensure that we create excellent products. You can rely on us as we strive to provide only the best IT services to the companies that want to grow and optimize their business activities.',
                                        onTap: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.servicesCardModel4,
                                      updateCallback: () => setState(() {}),
                                      child: ServicesCardWidget(
                                        icon: Icon(
                                          Icons.people_alt,
                                          color: Color(0xFFFFC50A),
                                          size: 100.0,
                                        ),
                                        header: 'MAINTENANCE & SUPPORT',
                                        text:
                                            'Our maintenance & support services ensure performance, stability, and safety of your cloud and on-site applications complying with service level agreement. Extrawest can cover level 2 and level 3 support of your application. Outsourcing your technical support at Ukraine-based Extrawest allows you to reduce expenditures on it while improving application response and resolution time.',
                                        onTap: () async {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
