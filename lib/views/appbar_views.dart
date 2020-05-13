import 'package:flutter/material.dart';

class MyPersonalAppBar extends AppBar {
  MyPersonalAppBar(
      {Key key,
      Widget titleAppBar,
      Widget leadingAppBar,
      List<Widget> iconAppBar})
      : super(
          key: key,
          title: titleAppBar != null ? titleAppBar : Text('App Bar'),
          centerTitle: true,
          leading: leadingAppBar != null
              ? leadingAppBar
              : Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () =>
                          print('Icon on the left by default pressed'),
                    );
                  },
                ),
          actions: iconAppBar != null
              ? iconAppBar
              : <Widget>[
                  IconButton(
                      icon: Icon(Icons.account_circle),
                      onPressed: () =>
                          print('icon on the right by default pressed'))
                ],
        );
}
