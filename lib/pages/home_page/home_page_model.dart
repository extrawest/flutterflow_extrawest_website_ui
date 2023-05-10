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

class HomePageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool isPortfolioMenuShow = false;

  bool isServicesMenuShow = false;

  bool isExpertiseMenuShow = false;

  bool isContactUsMenuShow = false;

  bool isMainMenuShow = true;

  int infoIndex = 0;

  String language = 'EN';

  bool isShowLenguageSelector = false;

  bool isShowTabletMenu = false;

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Model for tabletMenuButton component.
  late TabletMenuButtonModel tabletMenuButtonModel;
  // State field(s) for Language widget.
  bool languageHovered1 = false;
  // State field(s) for Language widget.
  bool languageHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // Model for DropMenuButton component.
  late DropMenuButtonModel dropMenuButtonModel1;
  // Model for DropMenuButton component.
  late DropMenuButtonModel dropMenuButtonModel2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // Model for DropMenuButton component.
  late DropMenuButtonModel dropMenuButtonModel3;
  // Model for DropMenuButton component.
  late DropMenuButtonModel dropMenuButtonModel4;
  // Model for DropMenuButton component.
  late DropMenuButtonModel dropMenuButtonModel5;
  // Model for DropMenuButton component.
  late DropMenuButtonModel dropMenuButtonModel6;
  // Model for DropMenuButton component.
  late DropMenuButtonModel dropMenuButtonModel7;
  // Model for DropMenuButton component.
  late DropMenuButtonModel dropMenuButtonModel8;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // Model for DropMenuButton component.
  late DropMenuButtonModel dropMenuButtonModel9;
  // Model for DropMenuButton component.
  late DropMenuButtonModel dropMenuButtonModel10;
  // Model for DropMenuButton component.
  late DropMenuButtonModel dropMenuButtonModel11;
  // Model for DropMenuButton component.
  late DropMenuButtonModel dropMenuButtonModel12;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel1;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel2;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel3;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel4;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel5;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel6;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel7;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel8;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel9;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel10;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel11;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel12;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel13;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel14;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel15;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel16;
  // Model for TabletMenuItem component.
  late TabletMenuItemModel tabletMenuItemModel17;
  // Model for ServicesCard component.
  late ServicesCardModel servicesCardModel1;
  // Model for ServicesCard component.
  late ServicesCardModel servicesCardModel2;
  // Model for ServicesCard component.
  late ServicesCardModel servicesCardModel3;
  // Model for ServicesCard component.
  late ServicesCardModel servicesCardModel4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    tabletMenuButtonModel = createModel(context, () => TabletMenuButtonModel());
    dropMenuButtonModel1 = createModel(context, () => DropMenuButtonModel());
    dropMenuButtonModel2 = createModel(context, () => DropMenuButtonModel());
    dropMenuButtonModel3 = createModel(context, () => DropMenuButtonModel());
    dropMenuButtonModel4 = createModel(context, () => DropMenuButtonModel());
    dropMenuButtonModel5 = createModel(context, () => DropMenuButtonModel());
    dropMenuButtonModel6 = createModel(context, () => DropMenuButtonModel());
    dropMenuButtonModel7 = createModel(context, () => DropMenuButtonModel());
    dropMenuButtonModel8 = createModel(context, () => DropMenuButtonModel());
    dropMenuButtonModel9 = createModel(context, () => DropMenuButtonModel());
    dropMenuButtonModel10 = createModel(context, () => DropMenuButtonModel());
    dropMenuButtonModel11 = createModel(context, () => DropMenuButtonModel());
    dropMenuButtonModel12 = createModel(context, () => DropMenuButtonModel());
    tabletMenuItemModel1 = createModel(context, () => TabletMenuItemModel());
    tabletMenuItemModel2 = createModel(context, () => TabletMenuItemModel());
    tabletMenuItemModel3 = createModel(context, () => TabletMenuItemModel());
    tabletMenuItemModel4 = createModel(context, () => TabletMenuItemModel());
    tabletMenuItemModel5 = createModel(context, () => TabletMenuItemModel());
    tabletMenuItemModel6 = createModel(context, () => TabletMenuItemModel());
    tabletMenuItemModel7 = createModel(context, () => TabletMenuItemModel());
    tabletMenuItemModel8 = createModel(context, () => TabletMenuItemModel());
    tabletMenuItemModel9 = createModel(context, () => TabletMenuItemModel());
    tabletMenuItemModel10 = createModel(context, () => TabletMenuItemModel());
    tabletMenuItemModel11 = createModel(context, () => TabletMenuItemModel());
    tabletMenuItemModel12 = createModel(context, () => TabletMenuItemModel());
    tabletMenuItemModel13 = createModel(context, () => TabletMenuItemModel());
    tabletMenuItemModel14 = createModel(context, () => TabletMenuItemModel());
    tabletMenuItemModel15 = createModel(context, () => TabletMenuItemModel());
    tabletMenuItemModel16 = createModel(context, () => TabletMenuItemModel());
    tabletMenuItemModel17 = createModel(context, () => TabletMenuItemModel());
    servicesCardModel1 = createModel(context, () => ServicesCardModel());
    servicesCardModel2 = createModel(context, () => ServicesCardModel());
    servicesCardModel3 = createModel(context, () => ServicesCardModel());
    servicesCardModel4 = createModel(context, () => ServicesCardModel());
  }

  void dispose() {
    instantTimer?.cancel();
    tabletMenuButtonModel.dispose();
    dropMenuButtonModel1.dispose();
    dropMenuButtonModel2.dispose();
    dropMenuButtonModel3.dispose();
    dropMenuButtonModel4.dispose();
    dropMenuButtonModel5.dispose();
    dropMenuButtonModel6.dispose();
    dropMenuButtonModel7.dispose();
    dropMenuButtonModel8.dispose();
    dropMenuButtonModel9.dispose();
    dropMenuButtonModel10.dispose();
    dropMenuButtonModel11.dispose();
    dropMenuButtonModel12.dispose();
    tabletMenuItemModel1.dispose();
    tabletMenuItemModel2.dispose();
    tabletMenuItemModel3.dispose();
    tabletMenuItemModel4.dispose();
    tabletMenuItemModel5.dispose();
    tabletMenuItemModel6.dispose();
    tabletMenuItemModel7.dispose();
    tabletMenuItemModel8.dispose();
    tabletMenuItemModel9.dispose();
    tabletMenuItemModel10.dispose();
    tabletMenuItemModel11.dispose();
    tabletMenuItemModel12.dispose();
    tabletMenuItemModel13.dispose();
    tabletMenuItemModel14.dispose();
    tabletMenuItemModel15.dispose();
    tabletMenuItemModel16.dispose();
    tabletMenuItemModel17.dispose();
    servicesCardModel1.dispose();
    servicesCardModel2.dispose();
    servicesCardModel3.dispose();
    servicesCardModel4.dispose();
  }

  /// Additional helper methods are added here.

}
