import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';

enum Attendance {
  present,
  absent,
  leave,
}

extension on Attendance {
  int compareTo(Attendance other) => index.compareTo(other.index);
}

class Character {
  Character(
      {required this.name,
      required this.present,
      required this.roll,
      required this.attendance});

  final String name;
  final bool present;
  final String roll;
  final List<Attendance> attendance;

  bool get absent {
    return !present;
  }

  static const List<String> _rollNo = [
    'bcsf10bm039',
    'bcsf10bm024',
    'bcsf10bm013',
    'bcsf10bm022',
    'bcsf10bm013',
    'bcsf10bm031',
    'bcsf10bm002',
    'bcsf10bm035',
    'bcsf10bm034',
  ];

  static Future<List<Character>> loadCharacters() async {
    math.Random random = math.Random();
    List<Character> list = [];
    for (String name in await _readNames('assets/data/females.txt')) {
      list.add(_character(name: name, male: false, random: random));
    }
    for (String name in await _readNames('assets/data/males.txt')) {
      list.add(_character(name: name, male: true, random: random));
    }
    list.shuffle();
    return list;
  }

  static Future<List<String>> _readNames(String filePath) async {
    String names = await rootBundle.loadString(filePath);
    LineSplitter ls = const LineSplitter();
    return ls.convert(names);
  }

  static Character _character(
      {required String name, required bool male, required math.Random random}) {
    String roll = _rollNo[random.nextInt(_rollNo.length)];
    Set<Attendance> todayIcon = {};
    int limitCount = 2;
    for (int i = 1; i < limitCount; i++) {
      todayIcon.add(Attendance.values[random.nextInt(Attendance.values.length)]);
    }
    List<Attendance> todayAttendance = todayIcon.toList();
    todayAttendance.sort((a, b) => a.compareTo(b));
    return Character(roll: roll, name: name, present: male, attendance: todayAttendance);
  }
}
