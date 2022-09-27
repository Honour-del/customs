
////ReUsable AsyncValue Widget
////ReUsable AsyncValue Widget
////ReUsable AsyncValue Widget
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({Key? key, required this.value, required this.data}) : super(key: key);
  final AsyncValue<T> value;
  final Widget Function(T) data;

  @override
  Widget build(BuildContext context) {
    return value.when(
        data: data,
        error: (e, _,) => Center(
          child: Text(
            e.toString(),
          ),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
    );
  }
}




////ReUsable AsyncValueSliver Widget
class AsyncValueSliverWidget<T> extends StatelessWidget {
  const AsyncValueSliverWidget({Key? key, required this.value, required this.data}) : super(key: key);
  final AsyncValue<T> value;
  final Widget Function(T) data;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: (e, _,) => SliverToBoxAdapter(
        child: Center(
          child: Text(
            e.toString(),
          ),
        ),
      ),
      loading: () => const SliverToBoxAdapter(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
