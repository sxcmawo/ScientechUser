import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

LatLng returnDefaultValue(LatLng? fromLocation) {
  // Convert the default coordinates to decimal degrees
  final double defaultLatitude = 51.108167; // 51°6′29.4″N
  final double defaultLongitude = 71.4025; // 71°24′9.0″E

  // Check if fromLocation is null or at 0° N, 0° E
  if (fromLocation == null ||
      (fromLocation.latitude == 0.0 && fromLocation.longitude == 0.0)) {
    return LatLng(
        defaultLatitude, defaultLongitude); // Return the default location
  }
  return fromLocation; // Return the original location
}

LatLng returnForToLocation(LatLng? toLocation) {
  // Convert the default coordinates to decimal degrees
  final double defaultLatitude = 51.091218690405604;
  final double defaultLongitude = 71.41060885156642;

  // Check if the toLocation is null or coordinates are 0° N, 0° E
  if (toLocation == null ||
      (toLocation.latitude == 0.0 && toLocation.longitude == 0.0)) {
    return LatLng(
        defaultLatitude, defaultLongitude); // Return the default location
  }
  return toLocation; // Return the original location
}
