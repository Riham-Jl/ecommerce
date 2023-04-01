import 'package:flutter/material.dart';

class Customtextauth extends StatelessWidget {
  final String title;
  final String bodytext;
  const Customtextauth({

    Key? key, required this.title, required this.bodytext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 35),
        child: Column(
          children: [
            Text(title , style: Theme.of(context).textTheme.headline1,),
            const SizedBox(height: 10,),
            Text (bodytext, style:  Theme.of(context).textTheme.bodyText1,),

          ],
        ),
      );
  }
}

