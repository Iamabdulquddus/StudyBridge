import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_table/responsive_table.dart';
import '../../constants/style.dartstyle.dart';
import '../../responsive.dart';
import '../admin/sidebar/sidebar_widget.dart';
import '../content.dart';
import 'package:easy_table/easy_table.dart';
import 'dart:async';

import 'components/attendance_icon.dart';
import 'components/character.dart';
import 'components/check_student_attendance.dart';

class StudentAttendance extends StatelessWidget {
  const StudentAttendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
          context, cardOfUserTable(context, StudentAttendanceTable())),
    );
  }
}

class StudentAttendanceTable extends StatefulWidget {
  const StudentAttendanceTable({Key? key}) : super(key: key);

  @override
  State<StudentAttendanceTable> createState() => _StudentAttendanceTableState();
}

class _StudentAttendanceTableState extends State<StudentAttendanceTable> {
  EasyTableModel<Character>? _model;
  late EasyTableModel<Character> usersFiltered;
  final bool _headerVisible = HeaderThemeDataDefaults.visible;
  final bool _leftPinned = true;
  final bool _hoverBackground = false;
  final bool _hoverForeground = true;
  final bool _rowFillHeight = RowThemeDataDefaults.fillHeight;
  final bool _nullValueColor = true;
  final bool _lastRowDividerVisible = RowThemeDataDefaults.lastDividerVisible;
  final bool _columnDividerFillHeight =
      EasyTableThemeDataDefaults.columnDividerFillHeight;

  @override
  void initState() {
    super.initState();
    _buildModel().then((model) {
      setState(() {
        _model = model;
      });
      usersFiltered = model;
    });
  }

  Future<EasyTableModel<Character>> _buildModel() async {
    List<Character> characters = await Character.loadCharacters();

    return EasyTableModel(rows: characters, columns: _buildColumns());
  }

  CellIcon check =
      CellIcon(icon: Icons.check, color: Colors.green.shade800, size: 16);
  CellIcon close = CellIcon(icon: Icons.close, color: Colors.red, size: 16);
  List<EasyTableColumn<Character>> _buildColumns() {
    return [
      EasyTableColumn(
        headerTextStyle: TextStyle(color: primary ),
          resizable: false,
          pinStatus: _leftPinned ? PinStatus.left : PinStatus.none,
          leading: const Icon(Icons.person, size: 16),
          name: 'Student Name',
          width: 200,
          stringValue: (row) => row.name),
      EasyTableColumn(
        name: 'Roll No',
        width: 110,
        stringValue: (row) => row.roll,
        resizable: false,
      ),
      EasyTableColumn(
        name: '1',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '2',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '3',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '4',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '5',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '6',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '7',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '8',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '9',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '10',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '11',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '12',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '13',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '14',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '15',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '16',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '17',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '18',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '19',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '20',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '21',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '22',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '23',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '24',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '25',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '26',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '27',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '28',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '29',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '30',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
      EasyTableColumn(
        name: '31',
        width: 35,
        cellBuilder: (context, data) =>
            AttendanceIcon(attendance: data.row.attendance),
        resizable: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    if (_model == null) {
      return const Center(child: CircularProgressIndicator());
    }

    Widget table = EasyTableTheme(
      data: EasyTableThemeData(
          columnDividerFillHeight: _columnDividerFillHeight,
          header: HeaderThemeData(visible: _headerVisible),
          cell: CellThemeData(
              nullValueColor:
                  _nullValueColor ? (index, hovered) => lightColor : null),
          row: _rowThemeData(),
          scrollbar: TableScrollbarThemeData(
            pinnedHorizontalColor: primary,
            thumbColor: tertiary,
            verticalColor: lightColor,
            unpinnedHorizontalColor: lightColor,
          )),
      child: EasyTable<Character>(
        _model,
        lastRowWidget: Center(
          child: Text('End of Class'),
        ),
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: lightColor,
      ),
      child: Column(
        children: [
          CheckStudentAttendance(),
          Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              height: Responsive.isMobile(context) ? 300 : 500,
              child: table),
        ],
      ),
    );
  }

  /// row color and stuff outside page
  RowThemeData _rowThemeData() {
    return RowThemeData(
        color: RowThemeData.zebraColor(),
        lastDividerVisible: _lastRowDividerVisible,
        fillHeight: _rowFillHeight,
        hoverBackground: _hoverBackground ? (index) => Colors.blue[50] : null,
        hoverForeground:
            _hoverForeground ? (index) => Colors.black.withOpacity(.1) : null);
  }
}

/// With responsive table ... not working as accepting
// class StudentAttendanceTable extends StatefulWidget {
//   const StudentAttendanceTable({Key? key}) : super(key: key);
//   @override
//   State<StudentAttendanceTable> createState() => _StudentAttendanceTableState();
// }
//
// class _StudentAttendanceTableState extends State<StudentAttendanceTable> {
//   late List<DatatableHeader> _headers;
//
//   final List<int> _perPages = [20, 30, 50, 100];
//   int _total = 100;
//   int? _currentPerPage = 20;
//   List<bool>? _expanded;
//   String? _searchKey = "id";
//
//   int _currentPage = 1;
//   bool _isSearch = false;
//   final List<Map<String, dynamic>> _sourceOriginal = [];
//   List<Map<String, dynamic>> _sourceFiltered = [];
//   List<Map<String, dynamic>> _source = [];
//   List<Map<String, dynamic>> _selecteds = [];
//   final String _selectableKey = "id";
//
//   String? _sortColumn;
//   bool _sortAscending = true;
//   bool _isLoading = true;
//   final bool _showSelect = true;
//   var random =  Random();
//
//   List<Map<String, dynamic>> _generateData({int n = 50}) {
//     final List source = List.filled(n, Random.secure());
//     List<Map<String, dynamic>> temps = [];
//     var i = 1;
//      Icon absent = Icon(Icons.close,color: Colors.red,);
//      Icon present = Icon(Icons.check, color: Colors.green,);
//     print(i);
//     // ignore: unused_local_variable
//     for (var data in source) {
//       temps.add({
//         "name": "Barkhurdar $i",
//         "1": "P",
//         "2": "P",
//         "3": "P",
//         "4": "P",
//         "5": "P",
//         "6": "P",
//         "7": "P",
//         "8": "P",
//         "9": "P",
//         "10": "P",
//         "11": "P",
//         "12": "P",
//         "13": "P",
//         "14": "P",
//         "15": "P",
//         "16": "P",
//         "17": "P",
//         "18": "P",
//         "19": "P",
//         "20": "P",
//         "21": "P",
//         "22": "P",
//         "23": "P",
//         "24": "P",
//         "25": "P",
//         "26": "P",
//         "27": "P",
//         "28": "P",
//         "29": "P",
//         "30": "P",
//         "31": "P",
//       });
//       i++;
//     }
//     return temps;
//   }
//
//   _initializeData() async {
//     _mockPullData();
//   }
//
//   _mockPullData() async {
//     _expanded = List.generate(_currentPerPage!, (index) => false);
//
//     setState(() => _isLoading = true);
//     Future.delayed(const Duration(seconds: 3)).then((value) {
//       _sourceOriginal.clear();
//       _sourceOriginal.addAll(_generateData(n: random.nextInt(100)));
//       _sourceFiltered = _sourceOriginal;
//       _total = _sourceFiltered.length;
//       _source = _sourceFiltered.getRange(0, _currentPerPage!).toList();
//       setState(() => _isLoading = false);
//     });
//   }
//
//   _resetData({start: 0}) async {
//     setState(() => _isLoading = true);
//     var expandedLen =
//     _total - start < _currentPerPage! ? _total - start : _currentPerPage;
//     Future.delayed(const Duration(seconds: 0)).then((value) {
//       _expanded = List.generate(expandedLen as int, (index) => false);
//       _source.clear();
//       _source = _sourceFiltered.getRange(start, start + expandedLen).toList();
//       setState(() => _isLoading = false);
//     });
//   }
//
//   _filterData(value) {
//     setState(() => _isLoading = true);
//
//     try {
//       if (value == "" || value == null) {
//         _sourceFiltered = _sourceOriginal;
//       } else {
//         _sourceFiltered = _sourceOriginal
//             .where((data) => data[_searchKey!]
//             .toString()
//             .toLowerCase()
//             .contains(value.toString().toLowerCase()))
//             .toList();
//       }
//
//       _total = _sourceFiltered.length;
//       var rangeTop = _total < _currentPerPage! ? _total : _currentPerPage!;
//       _expanded = List.generate(rangeTop, (index) => false);
//       _source = _sourceFiltered.getRange(0, rangeTop).toList();
//     } catch (e) {
//       print(e);
//     }
//     setState(() => _isLoading = false);
//   }
//
//   @override
//   void initState() {
//     super.initState();
//
//     /// set headers
//     _headers = [
//       DatatableHeader(
//           text: "Student",
//           value: "name",
//           show: true,
//           flex: 5,
//           sortable: true,
//           textAlign: TextAlign.left),
//       DatatableHeader(text: "1", value: "1", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "2", value: "2", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "3", value: "3", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "4", value: "4", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "5", value: "5", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "6", value: "6", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "7", value: "7", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "8", value: "8", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "9", value: "9", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "10", value: "10", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "11", value: "11", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "12", value: "12", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "13", value: "13", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "14", value: "14", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "15", value: "15", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "16", value: "16", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "17", value: "17", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "18", value: "18", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "19", value: "19", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "20", value: "20", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "21", value: "21", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "22", value: "22", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "23", value: "23", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "24", value: "24", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "25", value: "25", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "26", value: "26", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "27", value: "27", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "28", value: "28", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "29", value: "29", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "30", value: "30", show: true, sortable: true, textAlign: TextAlign.left),
//       DatatableHeader(text: "31", value: "31", show: true, sortable: true, textAlign: TextAlign.left),
//     ];
//
//     _initializeData();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       mainAxisSize: MainAxisSize.max,
//       children: [
//         Container(
//           // margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(0),
//           constraints: const BoxConstraints(
//             maxHeight: 600,
//           ),
//           child: Card(
//             elevation: 2,
//             shadowColor: Colors.black,
//             clipBehavior: Clip.none,
//             child: ResponsiveDatatable(
//               title: Row(
//                 children: [
//                   Text('All Student', style: MyTextStyles.headingLargePrimary,),
//                   const SizedBox(width: 10,),
//                   TextButton.icon(
//                     onPressed: () => {
//                       //TODO: new item adding link
//
//                     },
//                     icon: const Icon(Icons.add),
//                     label: const Text("new item"),
//                   ),
//
//                 ],
//               ),
//               reponseScreenSizes: const [ScreenSize.xs],
//               actions: [
//                 if (_isSearch)
//                   Expanded(
//                       child: TextField(
//                         decoration: InputDecoration(
//                             hintText: 'Enter search term based on ${_searchKey!
//                                     .replaceAll(RegExp('[\\W_]+'), ' ')
//                                     .toUpperCase()}',
//                             prefixIcon: IconButton(
//                                 icon: const Icon(Icons.cancel),
//                                 onPressed: () {
//                                   setState(() {
//                                     _isSearch = false;
//                                   });
//                                   _initializeData();
//                                 }),
//                             suffixIcon: IconButton(
//                                 icon: const Icon(Icons.search), onPressed: () {})),
//                         onSubmitted: (value) {
//                           _filterData(value);
//                         },
//                       )),
//                 if (!_isSearch)
//                   IconButton(
//                       icon: const Icon(Icons.search),
//                       onPressed: () {
//                         setState(() {
//                           _isSearch = true;
//                         });
//                       })
//               ],
//               headers: _headers,
//               headerDecoration: const BoxDecoration(
//                 color: lightColor,
//               ),
//               source: _source,
//               selecteds: _selecteds,
//               // showSelect: _showSelect,
//               autoHeight: false,
//               // dropContainer: (data) {
//               //   if (int.tryParse(data['id'].toString())!.isEven) {
//               //     return Text("is Even");
//               //   }
//               //   return _DropDownContainer(data: data);
//               // },
//               onChangedRow: (value, header) {
//                 /// print(value);
//                 /// print(header);
//               },
//               onSubmittedRow: (value, header) {
//                 /// print(value);
//                 /// print(header);
//               },
//               onTabRow: (data) {
//                 // print(data);
//               },
//               onSort: (value) {
//                 setState(() => _isLoading = true);
//
//                 setState(() {
//                   _sortColumn = value;
//                   _sortAscending = !_sortAscending;
//                   if (_sortAscending) {
//                     _sourceFiltered.sort((a, b) =>
//                         b["$_sortColumn"].compareTo(a["$_sortColumn"]));
//                   } else {
//                     _sourceFiltered.sort((a, b) =>
//                         a["$_sortColumn"].compareTo(b["$_sortColumn"]));
//                   }
//                   var rangeTop = _currentPerPage! < _sourceFiltered.length
//                       ? _currentPerPage!
//                       : _sourceFiltered.length;
//                   _source = _sourceFiltered.getRange(0, rangeTop).toList();
//                   _searchKey = value;
//                   _isLoading = true ;
//                 });
//               },
//               expanded: _expanded,
//               sortAscending: _sortAscending,
//               // sortColumn: _sortColumn,
//               isLoading: _isLoading,
//               onSelect: (value, item) {
//                 // print("$value  $item ");
//                 if (value!) {
//                   setState(() => _selecteds.add(item));
//                 } else {
//                   setState(
//                           () => _selecteds.removeAt(_selecteds.indexOf(item)));
//                 }
//               },
//               onSelectAll: (value) {
//                 if (value!) {
//                   setState(() => _selecteds =
//                       _source.map((entry) => entry).toList().cast());
//                 } else {
//                   setState(() => _selecteds.clear());
//                 }
//               },
//               ///footer
//               footers: [
//                 Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   child: const Text("Rows per page:"),
//                 ),
//                 if (_perPages.isNotEmpty)
//                   Container(
//                     padding: const EdgeInsets.symmetric(horizontal: 15),
//                     child: DropdownButton<int>(
//                       value: _currentPerPage,
//                       items: _perPages
//                           .map((e) => DropdownMenuItem<int>(
//                         value: e,
//                         child: Text("$e"),
//                       ))
//                           .toList(),
//                       onChanged: (dynamic value) {
//                         setState(() {
//                           _currentPerPage = value;
//                           _currentPage = 1;
//                           _resetData();
//                         });
//                       },
//                       isExpanded: false,
//                     ),
//                   ),
//                 Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   child: Text("$_currentPage - $_currentPerPage of $_total"),
//                 ),
//                 IconButton(
//                   icon: const Icon(
//                     Icons.arrow_back_ios,
//                     size: 16,
//                   ),
//                   onPressed: _currentPage == 1
//                       ? null
//                       : () {
//                     var nextSet = _currentPage - _currentPerPage!;
//                     setState(() {
//                       _currentPage = nextSet > 1 ? nextSet : 1;
//                       _resetData(start: _currentPage - 1);
//                     });
//                   },
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.arrow_forward_ios, size: 16),
//                   onPressed: _currentPage + _currentPerPage! - 1 > _total
//                       ? null
//                       : () {
//                     var nextSet = _currentPage + _currentPerPage!;
//
//                     setState(() {
//                       _currentPage = nextSet < _total
//                           ? nextSet
//                           : _total - _currentPerPage!;
//                       _resetData(start: nextSet - 1);
//                     });
//                   },
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class _DropDownContainer extends StatelessWidget {
//   final Map<String, dynamic> data;
//   const _DropDownContainer({Key? key, required this.data}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     List<Widget> children = data.entries.map<Widget>((entry) {
//       Widget w = Row(
//         children: [
//           Text(entry.key.toString()),
//           const Spacer(),
//           Text(entry.value.toString()),
//         ],
//       );
//       return w;
//     }).toList();
//
//     return Container(
//       padding: const EdgeInsets.all(10),
//       color: lightColor,
//       child: Column(
//         children: children,
//       ),
//     );
//   }
// }
