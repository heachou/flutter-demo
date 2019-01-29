import 'package:flutter/material.dart';
import './constants.dart' show Constants,AppColors;

enum ActionItems {
  GROUP_CHAT,
  ADD_FRIEND,
  QR_SCAN,
  PAYMENT,
  HELP
} 

class NavigationIconView {
  final String _title;
  final IconData _icon;
  final IconData _activeIcon;
  final BottomNavigationBarItem item;

  NavigationIconView(
      {Key key, String title, IconData icon, IconData activeIcon})
      : _title = title,
        _icon = icon,
        _activeIcon = activeIcon,
        item = BottomNavigationBarItem(
            icon: Icon(icon, color: Color(AppColors.TabIconNormal)),
            activeIcon: Icon(activeIcon, color: Color(AppColors.TabIconActive)),
            title: Text(title,
                style: TextStyle(
                    fontSize: 14.0, color: Color(AppColors.TabIconNormal))),
            backgroundColor: Colors.white);
}

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<NavigationIconView> _navigationViews;

  void initState() {
    super.initState();
    _navigationViews = [
      NavigationIconView(
          title: '微信',
          icon: IconData(0xe66c, fontFamily: Constants.IconFontFamily),
          activeIcon: IconData(0xe9ef, fontFamily: Constants.IconFontFamily)),
      NavigationIconView(
          title: '通讯录',
          icon: IconData(0xe708, fontFamily: Constants.IconFontFamily),
          activeIcon: IconData(0xe601, fontFamily: Constants.IconFontFamily)),
      NavigationIconView(
          title: '发现',
          icon: IconData(0xe60d, fontFamily: Constants.IconFontFamily),
          activeIcon: IconData(0xe6bd, fontFamily: Constants.IconFontFamily)),
      NavigationIconView(
          title: '我',
          icon: IconData(0xe602, fontFamily: Constants.IconFontFamily),
          activeIcon: IconData(0xe633, fontFamily: Constants.IconFontFamily)),
    ];
  }

  _buildPopupMenuItem(int iconName,String title){
    return Row(
      children: <Widget>[
        Icon(
          IconData(
            iconName,
            fontFamily:Constants.IconFontFamily
          ),
          size: 16,
        ),
        Container(
          padding: const EdgeInsets.only(
            right: 12.0
          ),
        ),
        Text(title)
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar botNavBar = BottomNavigationBar(
      items: _navigationViews.map((NavigationIconView view) {
        return view.item;
      }).toList(),
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        print('点击的第 $index 个tab');
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              IconData(0xe60a, fontFamily: Constants.IconFontFamily),
              size: 22.0,
            ),
            onPressed: () {
              print('点击了搜索按钮');
            },
          ),
          Container(
            padding: const EdgeInsets.only(right: 10.0),
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<ActionItems>>[
                PopupMenuItem(
                  child: _buildPopupMenuItem(0xe600,"发起群聊"),
                  value: ActionItems.GROUP_CHAT,
                ),
                PopupMenuItem(
                  child: _buildPopupMenuItem(0xe647,"添加朋友"),
                  value: ActionItems.ADD_FRIEND,
                ),
                PopupMenuItem(
                  child: _buildPopupMenuItem(0xe748,"扫一扫"),
                  value: ActionItems.QR_SCAN,
                ),
                PopupMenuItem(
                  child: _buildPopupMenuItem(0xe62a,"收付款"),
                  value: ActionItems.PAYMENT,
                ),
                PopupMenuItem(
                  child: _buildPopupMenuItem(0xe700,"帮助与反馈"),
                  value: ActionItems.HELP,
                )
              ];
            },
            icon: Icon(
              IconData(0xe603, fontFamily: Constants.IconFontFamily),
              size: 22.0,
            ),
            onSelected: (ActionItems selected){
              print(selected);
            },
          ),
          Container(width: 16.0),
        ],
      ),
      body: Container(
        color: Colors.red,
      ),
      bottomNavigationBar: botNavBar,
    );
  }
}
