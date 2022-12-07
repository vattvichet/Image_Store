import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Expanded(
            child: const Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 75,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage('assets/images/6.jpg'),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Vatt Vichet",
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(100, 120, 116, 116),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "About",
                      textAlign: TextAlign.center,
                    ),
                    const Text(""),
                  ],
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(100, 120, 116, 116),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Card",
                      textAlign: TextAlign.center,
                    ),
                    const Text(""),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
