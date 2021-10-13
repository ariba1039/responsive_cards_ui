import 'package:flutter/material.dart';

class ResponsiveCards extends StatelessWidget {
  const ResponsiveCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF212239),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'your cards ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Center(
                        child: _CardItem(
                          color:
                              Colors.primaries[index % Colors.primaries.length],
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}

class _CardItem extends StatelessWidget {
  final Color color;

  const _CardItem({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.withOpacity(0.3),
              color,
            ], stops: [
              0.3,
              0.5
            ]),
            borderRadius: BorderRadius.circular(20.0)),
        child: Text(''),
      ),
    );
  }
}
