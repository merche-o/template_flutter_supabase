import 'package:flutter/material.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/services/authenticationService.dart';

class SideDrawer extends StatelessWidget {
  final _authService = locator<AuthenticationService>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text(
            'Categories',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          decoration: BoxDecoration(
            color: Colors.green,
            /* image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/cover.jpg'))*/
          ),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('logout'),
          onTap: () => {_authService.signOut()},
        )
      ],
    ));
  }
}
