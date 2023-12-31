import 'dart:math';
import 'package:flutter/material.dart';
import 'package:responsive_table/responsive_table.dart';

import '../../constants/style.dartstyle.dart';

import '../admin/sidebar/sidebar_widget.dart';
import '../content.dart';
import 'check_routine.dart';

class AllClassRoutine extends StatelessWidget {
  const AllClassRoutine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
          context, cardOfUserTable(context,  Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: lightColor,
        ),
        child: Column(
          children: [
            const CheckRoutine(),
            Container(
              // padding: const EdgeInsets.symmetric(vertical: 15),
              // height: Responsive.isMobile(context) ? 300 : 500,
              child:  AllClassRoutineTable(),
            ),
          ],
        ),
      ))),
    );
  }
}

class AllClassRoutineTable extends StatefulWidget {
  AllClassRoutineTable({Key? key}) : super(key: key);
  @override
  State<AllClassRoutineTable> createState() => _AllClassRoutineTableState();
}

class _AllClassRoutineTableState extends State<AllClassRoutineTable> {
  late List<DatatableHeader> _headers;

  List<int> _perPages = [20, 30, 50, 100];
  int _total = 100;
  int? _currentPerPage = 20;
  List<bool>? _expanded;
  String? _searchKey = "id";

  int _currentPage = 1;
  bool _isSearch = false;
  List<Map<String, dynamic>> _sourceOriginal = [];
  List<Map<String, dynamic>> _sourceFiltered = [];
  List<Map<String, dynamic>> _source = [];
  List<Map<String, dynamic>> _selecteds = [];
  // ignore: unused_field
  final String _selectableKey = "id";

  String? _sortColumn;
  bool _sortAscending = true;
  bool _isLoading = true;
  final bool _showSelect = true;
  var random =  Random();

  List<Map<String, dynamic>> _generateData({int n = 50}) {
    final List source = List.filled(n, Random.secure());
    List<Map<String, dynamic>> temps = [];
    var i = 1;
    print(i);
    // ignore: unused_local_variable
    for (var data in source) {
      temps.add({
        "day": "Monday",
        "name": "Barkhurdar $i",
        "class": "Class  $i",
        "section": "A$i",
        "subject": "Computer Science",
        "time": "11:30am - 12:30pm",
      });
      i++;
    }
    return temps;
  }

  _initializeData() async {
    _mockPullData();
  }

  _mockPullData() async {
    _expanded = List.generate(_currentPerPage!, (index) => false);

    setState(() => _isLoading = true);
    Future.delayed(Duration(seconds: 3)).then((value) {
      _sourceOriginal.clear();
      _sourceOriginal.addAll(_generateData(n: random.nextInt(100)));
      _sourceFiltered = _sourceOriginal;
      _total = _sourceFiltered.length;
      _source = _sourceFiltered.getRange(0, _currentPerPage!).toList();
      setState(() => _isLoading = false);
    });
  }

  _resetData({start: 0}) async {
    setState(() => _isLoading = true);
    var _expandedLen =
    _total - start < _currentPerPage! ? _total - start : _currentPerPage;
    Future.delayed(Duration(seconds: 0)).then((value) {
      _expanded = List.generate(_expandedLen as int, (index) => false);
      _source.clear();
      _source = _sourceFiltered.getRange(start, start + _expandedLen).toList();
      setState(() => _isLoading = false);
    });
  }

  _filterData(value) {
    setState(() => _isLoading = true);

    try {
      if (value == "" || value == null) {
        _sourceFiltered = _sourceOriginal;
      } else {
        _sourceFiltered = _sourceOriginal
            .where((data) => data[_searchKey!]
            .toString()
            .toLowerCase()
            .contains(value.toString().toLowerCase()))
            .toList();
      }

      _total = _sourceFiltered.length;
      var _rangeTop = _total < _currentPerPage! ? _total : _currentPerPage!;
      _expanded = List.generate(_rangeTop, (index) => false);
      _source = _sourceFiltered.getRange(0, _rangeTop).toList();
    } catch (e) {
      print(e);
    }
    setState(() => _isLoading = false);
  }

  @override
  void initState() {
    super.initState();

    /// set headers
    _headers = [
      DatatableHeader(
          text: "Day",
          value: "day",
          show: true,
          sortable: true,
          flex : 1,
          textAlign: TextAlign.left),
      DatatableHeader(
          text: "Teacher Name",
          value: "name",
          show: true,
          flex: 2,
          sortable: true,
          textAlign: TextAlign.left),
      DatatableHeader(
          text: "Class",
          value: "class",
          show: true,
          sortable: true,
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "Section",
          value: "section",
          show: true,
          sortable: true,
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "Subject",
          value: "subject",
          show: true,
          sortable: true,
          flex: 1,
          textAlign: TextAlign.center),
      DatatableHeader(
        text: "Time",
        value: "time",
        show: true,
        sortable: true,
        textAlign: TextAlign.center,
      ),
    ];

    _initializeData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(0),
          constraints: BoxConstraints(
            maxHeight: 600,
          ),
          child: Card(
            elevation: 2,
            shadowColor: Colors.black,
            clipBehavior: Clip.none,
            child: ResponsiveDatatable(
              title: Row(
                children: [
                  Text('All Results', style: MyTextStyles.headingLargePrimary,),
                  SizedBox(width: 10,),
                  TextButton.icon(
                    onPressed: () => {
                      //TODO: new item adding link

                    },
                    icon: Icon(Icons.add),
                    label: Text("new item"),
                  ),

                ],
              ),
              reponseScreenSizes: [ScreenSize.xs],
              actions: [
                if (_isSearch)
                  Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter search term based on ' +
                                _searchKey!
                                    .replaceAll(new RegExp('[\\W_]+'), ' ')
                                    .toUpperCase(),
                            prefixIcon: IconButton(
                                icon: Icon(Icons.cancel),
                                onPressed: () {
                                  setState(() {
                                    _isSearch = false;
                                  });
                                  _initializeData();
                                }),
                            suffixIcon: IconButton(
                                icon: Icon(Icons.search), onPressed: () {})),
                        onSubmitted: (value) {
                          _filterData(value);
                        },
                      )),
                if (!_isSearch)
                  IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        setState(() {
                          _isSearch = true;
                        });
                      })
              ],
              headers: _headers,
              headerDecoration: BoxDecoration(
                color: lightColor,
              ),
              source: _source,
              selecteds: _selecteds,
              // showSelect: _showSelect,
              autoHeight: false,
              // dropContainer: (data) {
              //   if (int.tryParse(data['id'].toString())!.isEven) {
              //     return Text("is Even");
              //   }
              //   return _DropDownContainer(data: data);
              // },
              onChangedRow: (value, header) {
                /// print(value);
                /// print(header);
              },
              onSubmittedRow: (value, header) {
                /// print(value);
                /// print(header);
              },
              onTabRow: (data) {
                // print(data);
              },
              onSort: (value) {
                setState(() => _isLoading = true);

                setState(() {
                  _sortColumn = value;
                  _sortAscending = !_sortAscending;
                  if (_sortAscending) {
                    _sourceFiltered.sort((a, b) =>
                        b["$_sortColumn"].compareTo(a["$_sortColumn"]));
                  } else {
                    _sourceFiltered.sort((a, b) =>
                        a["$_sortColumn"].compareTo(b["$_sortColumn"]));
                  }
                  var _rangeTop = _currentPerPage! < _sourceFiltered.length
                      ? _currentPerPage!
                      : _sourceFiltered.length;
                  _source = _sourceFiltered.getRange(0, _rangeTop).toList();
                  _searchKey = value;

                  _isLoading = false;
                });
              },
              expanded: _expanded,
              sortAscending: _sortAscending,
              // sortColumn: _sortColumn,
              isLoading: _isLoading,
              onSelect: (value, item) {
                // print("$value  $item ");
                if (value!) {
                  setState(() => _selecteds.add(item));
                } else {
                  setState(
                          () => _selecteds.removeAt(_selecteds.indexOf(item)));
                }
              },
              onSelectAll: (value) {
                if (value!) {
                  setState(() => _selecteds =
                      _source.map((entry) => entry).toList().cast());
                } else {
                  setState(() => _selecteds.clear());
                }
              },
              ///footer
              footers: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text("Rows per page:"),
                ),
                if (_perPages.isNotEmpty)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: DropdownButton<int>(
                      value: _currentPerPage,
                      items: _perPages
                          .map((e) => DropdownMenuItem<int>(
                        child: Text("$e"),
                        value: e,
                      ))
                          .toList(),
                      onChanged: (dynamic value) {
                        setState(() {
                          _currentPerPage = value;
                          _currentPage = 1;
                          _resetData();
                        });
                      },
                      isExpanded: false,
                    ),
                  ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text("$_currentPage - $_currentPerPage of $_total"),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 16,
                  ),
                  onPressed: _currentPage == 1
                      ? null
                      : () {
                    var _nextSet = _currentPage - _currentPerPage!;
                    setState(() {
                      _currentPage = _nextSet > 1 ? _nextSet : 1;
                      _resetData(start: _currentPage - 1);
                    });
                  },
                  padding: EdgeInsets.symmetric(horizontal: 15),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios, size: 16),
                  onPressed: _currentPage + _currentPerPage! - 1 > _total
                      ? null
                      : () {
                    var _nextSet = _currentPage + _currentPerPage!;

                    setState(() {
                      _currentPage = _nextSet < _total
                          ? _nextSet
                          : _total - _currentPerPage!;
                      _resetData(start: _nextSet - 1);
                    });
                  },
                  padding: EdgeInsets.symmetric(horizontal: 15),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _DropDownContainer extends StatelessWidget {
  final Map<String, dynamic> data;
  const _DropDownContainer({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _children = data.entries.map<Widget>((entry) {
      Widget w = Row(
        children: [
          Text(entry.key.toString()),
          Spacer(),
          Text(entry.value.toString()),
        ],
      );
      return w;
    }).toList();

    return Container(
      padding: EdgeInsets.all(10),
      color: lightColor,
      child: Column(
        children: _children,
      ),
    );
  }
}
