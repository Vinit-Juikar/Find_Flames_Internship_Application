import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'messages.dart';
import 'searchBar.dart';

class searchBarAndMessages extends StatelessWidget {
  const searchBarAndMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          searchBar(),
          messages(),
        ],
      ),
    );
  }
}
