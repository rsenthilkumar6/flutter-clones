import 'package:churlu/screens/responsive.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Responsive(
        mobile: _CustomeAppBarMobile(),
        desktop: _CustomeAppBarDesktop(),
      ),
    );
  }
}

class _CustomeAppBarDesktop extends StatelessWidget {
  const _CustomeAppBarDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Container(),
      ),
    );
  }
}

class _CustomeAppBarMobile extends StatelessWidget {
  const _CustomeAppBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Text('Churlu'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.location_on),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
