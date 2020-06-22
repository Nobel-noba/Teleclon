import 'package:flutter/material.dart';
import 'package:teleclone/pages/components.dart';

class SideBar extends StatelessWidget {

  final Function onTap;

  SideBar({
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      child: Drawer(
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              backgroundColor: Colors.green,
              pinned: true,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Ethiotelecom Services'),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.lightGreen[100 * (index % 9)],
                    child: RaisedButton(
                      color: Color(0x00ffffff),
                      child: btn(index: index),
                    ),
                  );
                },
                childCount: 7,
              ),
            ),
          ],
        )
      ),
    );
  }
}