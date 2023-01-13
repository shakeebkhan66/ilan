import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:collapsible_sidebar/collapsible_sidebar/collapsible_item.dart';
import 'package:flutter/material.dart';
import 'package:ilan/constants/colors.dart';
import 'package:ilan/screens/sssd.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late List<CollapsibleItem> _items;
  var _headline;
  final AssetImage _avatarImg = const AssetImage('assets/images/icon.png');

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _headline = _items.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: "dddd",
        icon: Icons.school_outlined,
        onPressed: () => setState(() => _headline = Shaki()),
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'Flutter',
        icon: Icons.flutter_dash_outlined,
        onPressed: () => setState(() => _headline = Shaki()),
      ),
      CollapsibleItem(
        text: 'HTML',
        icon: Icons.html_outlined,
        onPressed: () => setState(() => _headline = Shaki()),
      ),
      CollapsibleItem(
        text: 'CSS',
        icon: Icons.css_outlined,
        onPressed: () => setState(() => _headline = Shaki()),
      ),
      CollapsibleItem(
        text: 'JavaScript',
        icon: Icons.javascript_outlined,
        onPressed: () => setState(() => _headline = Shaki()),
      ),
      CollapsibleItem(
        text: 'Home',
        icon: Icons.home,
        onPressed: () => setState(() => _headline = Shaki()),
      ),

    ];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: CollapsibleSidebar(
        // isCollapsed: MediaQuery.of(context).size.width <= 50,
        items: _items,
        avatarImg: _avatarImg,
        onTitleTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Yay! Flutter Collapsible Sidebar!')));
        },
        body: _body(size, context),
        selectedIconBox: Colors.transparent,
        unselectedTextColor: Colors.white,
        unselectedIconColor: Colors.white,
        backgroundColor: sideBarColor,
        selectedTextColor: buttonColor,
        textStyle: const TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
        titleStyle: const TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
        toggleTitleStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        sidebarBoxShadow: const [
          BoxShadow(
            color: Colors.transparent,
          ),
          BoxShadow(
            color: Colors.transparent,
          ),
        ],
      ),
    );
  }

  Widget _body(Size size, BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromARGB(255, 255, 255, 255),
      child: Center(
        child: Text(
          _headline,
          style: Theme.of(context).textTheme.headline2,
          overflow: TextOverflow.visible,
          softWrap: false,
        ),
      ),
    );
  }
}