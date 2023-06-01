import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_notifier/provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed this button many times :',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            // The Consumer widget rebuilds itself
            //whenever the counterProvider changes.
            Consumer(
              builder: (context, ref, child) {
                return Text(
                  //  ref.watch(counterProvider) retrieves the current value of the counterProvider. It will rebuild the Text widget whenever the value of counterProvider changes.

                  '${ref.watch(counterProvider).count}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: myFloatingActionButton(ref),
    );
  }

  Widget myFloatingActionButton(ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            // By calling read, it obtains the notifier object,
            //which is responsible for managing the state of the counter.
            ref.read(counterProvider.notifier).increment();
          },
          child: const Icon(
            Icons.add,
            size: 32,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            ref.read(counterProvider.notifier).decrement();
          },
          child: const Icon(
            Icons.remove,
            size: 32,
          ),
        ),
      ],
    );
  }
}
