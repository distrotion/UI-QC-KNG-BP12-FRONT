import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/13-01-Refgraph.dart';
import '../model/model.dart';
import 'P13DSA01/DSA01main.dart';
import 'P13DSA01/DSA01var.dart';

class Page13 extends StatelessWidget {
  const Page13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page13BlocTableBody();
  }
}

class Page13BlocTableBody extends StatelessWidget {
  const Page13BlocTableBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => DSA01_Bloc(),
        child: BlocBuilder<DSA01_Bloc, DSA01SCHEMA>(
          builder: (context, data) {
            return Page13Body(
              data: data,
            );
          },
        ));
  }
}

class Page13Body extends StatelessWidget {
  Page13Body({Key? key, this.data}) : super(key: key);
  DSA01SCHEMA? data;

  @override
  Widget build(BuildContext context) {
    return MICROVICKER_DSA01main(
      data: data,
    );
  }
}
