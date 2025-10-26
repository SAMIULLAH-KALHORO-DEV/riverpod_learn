import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final staticStringProvider = Provider((Ref ref) {
  return 'hello world \n';
});
final doublevari = Provider((Ref ref) {
  return 30;
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(staticStringProvider);
    final resultone = ref.watch(doublevari);
    return Scaffold(body: Center(child: Text(result + resultone.toString())));
  }
}
