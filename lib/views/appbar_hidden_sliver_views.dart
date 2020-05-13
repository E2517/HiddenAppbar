import 'package:flutter/material.dart';

class AppBarHidden {
  Widget appBarHidden() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          leading: IconButton(
              icon: Icon(Icons.filter_1),
              onPressed: () {
                print('Carlos');
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.add_circle),
                onPressed: () {
                  print('Ramona');
                }),
          ],
          title: Text('My Journey'),
          titleSpacing: 10.0,
          backgroundColor: Color.fromRGBO(0, 0, 59, 1.0),
          floating: true,
        ),
        SliverAppBar(
          // pinned: true,
          floating: false,
          expandedHeight: 120.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Basic Slivers Team'),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50,
          delegate: SliverChildListDelegate([
            Container(color: Colors.red),
            Container(color: Colors.green),
            Container(color: Colors.blue),
          ]),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                height: 50,
                alignment: Alignment.center,
                color: Colors.orange[100 * (index % 9)],
                child: Text('orange $index'),
              );
            },
            childCount: 9,
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 1,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 4.0,
          children: <Widget>[
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('carlos'),
                );
              },
            ),
          ],
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('grid item $index'),
              );
            },
            childCount: 30,
          ),
          // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //   maxCrossAxisExtent: 200.0,
          //   mainAxisSpacing: 10.0,
          //   crossAxisSpacing: 10.0,
          //   childAspectRatio: 4.0,
          // ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 2.0,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(8.0),
            child: Text('Grid Header', style: TextStyle(fontSize: 24)),
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 4.0,
          children: <Widget>[
            Container(color: Colors.red),
            Container(color: Colors.green),
            Container(color: Colors.blue),
            Container(color: Colors.red),
            Container(color: Colors.green),
            Container(color: Colors.blue),
          ],
        ),
        SliverGrid.extent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 4.0,
          children: <Widget>[
            Container(color: Colors.pink),
            Container(color: Colors.indigo),
            Container(color: Colors.orange),
            Container(color: Colors.pink),
            Container(color: Colors.indigo),
            Container(
              color: Colors.orange,
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('carlos'),
                  );
                },
              ),
            ),
          ],
        ),
        SliverGrid.count(
          crossAxisCount: 1,
          // mainAxisSpacing: 10.0,
          // crossAxisSpacing: 10.0,
          childAspectRatio: 1.0,
          children: <Widget>[
            ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.access_time),
                  title: Text('carlos $index'),
                  trailing: Icon(Icons.add_a_photo),
                  onLongPress: () => print('hola carlos'),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
