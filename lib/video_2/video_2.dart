import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
// this is riverpod toturial for learning

final counterProvider = StateProvider((Ref ref) {
  return 0;
});

class StateProviderTutorial extends ConsumerWidget {
  const StateProviderTutorial({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("State Provider")),
      floatingActionButton: IconButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
        icon: Icon(Icons.add),
      ),
      body: Center(
        child: Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            final counter = ref.watch(counterProvider);
            print('couter method printed');

            return Text(counter.toString());
          },
        ),
      ),
    );
  }
}
