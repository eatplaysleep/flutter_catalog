import 'package:flutter/material.dart';
import '../my_route.dart';

class NavDrawerExample extends MyRoute {
  const NavDrawerExample(
      [String sourceFile = 'lib/routes/nav_nav_drawer_header_ex.dart'])
      : super(sourceFile);

  @override
  get title => 'Navigation Drawer';

  @override
  get links => {
        'Doc': 'https://docs.flutter.io/flutter/material/Drawer-class.html',
      };

  @override
  Widget buildMyRouteContent(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('user.name@email.com'),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42.0),
        backgroundColor: Colors.white,
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(
          child: Text('A'),
          backgroundColor: Colors.yellow,
        ),
        CircleAvatar(
          child: Text('B'),
          backgroundColor: Colors.red,
        )
      ],
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: Text('To page 1'),
          onTap: () => Navigator.of(context).push(_NewPage(1)),
        ),
        ListTile(
          title: Text('To page 2'),
          onTap: () => Navigator.of(context).push(_NewPage(2)),
        ),
        ListTile(
          title: Text('other drawer item'),
          onTap: () {},
        ),
      ],
    );
    return Scaffold(
        appBar: AppBar(
//          backgroundColor: Colors.amber,
          title: Text('Drawer example'),
        ),
        body: Center(
          child: Text('Swip or click upper-left icon to see drawer.'),
        ),
        drawer: Drawer(
          child: drawerItems,
        ));
  }
}

// <Null> means this route returns nothing.
class _NewPage extends MaterialPageRoute<Null> {
  final int _id;
  _NewPage(this._id)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Page $_id'),
              elevation: 1.0,
            ),
            body: Center(
              child: Text('Page $_id'),
            ),
          );
        });
}
