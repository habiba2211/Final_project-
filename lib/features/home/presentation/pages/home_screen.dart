import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../layout/presentation/logic/home_layout_cubit.dart';

class HomeTap extends StatefulWidget {
  const HomeTap({
    super.key,
  });

  @override
  State<HomeTap> createState() => _HomeTapState();
}

class _HomeTapState extends State<HomeTap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      //extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'AI NABTA',
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          if (GetIt.instance<HomeLayoutCubit>().img != null)
            Image(
              image: FileImage(GetIt.instance<HomeLayoutCubit>().img!.image),
              width: double.infinity,
              height: 300,
            )
        ],
      ),
    );
  }
}
