import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

String getMainImage(int index) {
  switch (index) {
    case 0:
      return 'https://www.extrawest.com/wp-content/uploads/2017/10/Home-2-slider-3.jpg';
    case 1:
      return 'https://www.extrawest.com/wp-content/uploads/2017/10/slide20-res-1.jpg';
    case 2:
      return 'https://www.extrawest.com/wp-content/uploads/2017/10/slide16-res-1.jpg';
    case 3:
      return 'https://www.extrawest.com/wp-content/uploads/2017/10/slide25-res-1.jpg';
    default:
      return '';
  }
}

String getMainText(int index) {
  switch (index) {
    case 0:
      return 'Managing Big Data:';
    case 1:
      return 'Successfully Delivering Software Solutions';
    case 2:
      return 'Ukraine as Priority Software Development Outsourcing Destination';
    case 3:
      return 'Improving Business Processes';
    default:
      return '';
  }
}

String getAdditionalText(int index) {
  switch (index) {
    case 0:
      return 'From Mining and Scraping WEB to Analytical Solutions';
    case 1:
      return 'SINCE 2006';
    case 2:
      return '';
    case 3:
      return 'by Implementing Service Oriented Architectures';
    default:
      return '';
  }
}

int increaseInfoIndex(int infoIndex) {
  if (infoIndex < 3) {
    return infoIndex + 1;
  } else {
    return 0;
  }
}
