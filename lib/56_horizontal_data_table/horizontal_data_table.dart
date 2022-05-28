import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

class MyHorizontalDataTable extends StatefulWidget {
  const MyHorizontalDataTable({Key? key}) : super(key: key);

  @override
  State<MyHorizontalDataTable> createState() => _MyHorizontalDataTableState();
}

class _MyHorizontalDataTableState extends State<MyHorizontalDataTable> {
  final HDTRefreshController _hdtRefreshController = HDTRefreshController();

  static const int sortName = 0;
  static const int sortStatus = 1;
  bool isAscending = true;
  int sortType = sortName;

  @override
  void initState() {
    user.initData(100);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horizontal Data Table'),
      ),
      body: _getBodyWidget(),
    );
  }

  Widget _getBodyWidget() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: HorizontalDataTable(
        leftHandSideColumnWidth: 100,
        rightHandSideColumnWidth: 600,
        isFixedHeader: true,
        headerWidgets: _getTitleWidget(),
        leftSideItemBuilder: _generateFirstColumnRow,
        rightSideItemBuilder: _generateRightHandSideColumnRow,
        itemCount: user.userInfo.length,
        rowSeparatorWidget: const Divider(
          color: Colors.black54,
          height: 1.0,
          thickness: 0.0,
        ),
        leftHandSideColBackgroundColor: const Color(0xFFFFFFFF),
        rightHandSideColBackgroundColor: const Color(0xFFFFFFFF),
        verticalScrollbarStyle: const ScrollbarStyle(
          thumbColor: Colors.yellow,
          isAlwaysShown: true,
          thickness: 4.0,
          radius: Radius.circular(5.0),
        ),
        horizontalScrollbarStyle: const ScrollbarStyle(
          thumbColor: Colors.red,
          isAlwaysShown: true,
          thickness: 4.0,
          radius: Radius.circular(5.0),
        ),
        enablePullToRefresh: true,
        refreshIndicator: const WaterDropHeader(),
        refreshIndicatorHeight: 60,
        onRefresh: () async {
          //Do sth
          await Future.delayed(const Duration(milliseconds: 500));
          _hdtRefreshController.refreshCompleted();
        },
        enablePullToLoadNewData: true,
        loadIndicator: const ClassicFooter(),
        onLoad: () async {
          //Do sth
          await Future.delayed(const Duration(milliseconds: 500));
          _hdtRefreshController.loadComplete();
        },
        htdRefreshController: _hdtRefreshController,
      ),
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: _getTitleItemWidget(
          'Name${sortType == sortName ? (isAscending ? '↓' : '↑') : ''}',
          100,
        ),
        onPressed: () {
          sortType = sortName;
          isAscending = !isAscending;
          user.sortName(isAscending);
          setState(() {});
        },
      ),
      TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: _getTitleItemWidget(
          'Status${sortType == sortStatus ? (isAscending ? '↓' : '↑') : ''}',
          100,
        ),
        onPressed: () {
          sortType = sortStatus;
          isAscending = !isAscending;
          user.sortStatus(isAscending);
          setState(() {});
        },
      ),
      _getTitleItemWidget('Phone', 200),
      _getTitleItemWidget('Register', 100),
      _getTitleItemWidget('Termination', 200),
    ];
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      width: width,
      height: 56,
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
      child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      width: 100,
      height: 52,
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
      child: Text(user.userInfo[index].name),
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Icon(
                  user.userInfo[index].status
                      ? Icons.notifications_off
                      : Icons.notifications_active,
                  color:
                      user.userInfo[index].status ? Colors.red : Colors.green),
              Text(user.userInfo[index].status ? 'Disabled' : 'Active')
            ],
          ),
        ),
        Container(
          width: 200,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Text(user.userInfo[index].phone),
        ),
        Container(
          width: 100,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Text(user.userInfo[index].registerDate),
        ),
        Container(
          width: 200,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Text(user.userInfo[index].terminationDate),
        ),
      ],
    );
  }
}

User user = User();

class User {
  List<UserInfo> userInfo = [];

  void initData(int size) {
    for (int i = 0; i < size; i++) {
      userInfo.add(UserInfo(
          "User_$i", i % 3 == 0, '+001 9999 9999', '2019-01-01', 'N/A'));
    }
  }

  ///
  /// Single sort, sort Name's id
  void sortName(bool isAscending) {
    userInfo.sort((a, b) {
      int aId = int.tryParse(a.name.replaceFirst('User_', '')) ?? 0;
      int bId = int.tryParse(b.name.replaceFirst('User_', '')) ?? 0;
      return (aId - bId) * (isAscending ? 1 : -1);
    });
  }

  ///
  /// sort with Status and Name as the 2nd Sort
  void sortStatus(bool isAscending) {
    userInfo.sort((a, b) {
      if (a.status == b.status) {
        int aId = int.tryParse(a.name.replaceFirst('User_', '')) ?? 0;
        int bId = int.tryParse(b.name.replaceFirst('User_', '')) ?? 0;
        return (aId - bId);
      } else if (a.status) {
        return isAscending ? 1 : -1;
      } else {
        return isAscending ? -1 : 1;
      }
    });
  }
}

class UserInfo {
  String name;
  bool status;
  String phone;
  String registerDate;
  String terminationDate;

  UserInfo(this.name, this.status, this.phone, this.registerDate,
      this.terminationDate);
}
