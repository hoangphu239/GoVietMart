import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/bloc/loading/loading_cubit.dart';
import 'loading_circle.dart';

class LoadingScreen extends StatelessWidget {
  final Widget screen;

  const LoadingScreen({Key? key, required this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingCubit, bool>(
      builder: (context, shouldShow) {
        return Stack(
          fit: StackFit.expand,
          children: [
            screen,
            if (shouldShow)
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.7)),
                child: const Center(
                  child: LoadingCircle(),
                ),
              ),
          ],
        );
      },
    );
  }
}
