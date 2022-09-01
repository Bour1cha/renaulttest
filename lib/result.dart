import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.score}) : super(key: key);

  final int score;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 150,
                width: 150,
                child: Image.asset(
                  'assets/r.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Text("Vous avez obtenu $score/${questions.length}"),
            // score > 5
            // ?
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(
                //   height: 200,
                //   width: 200,
                //   child: Lottie.network(
                //       'https://assets8.lottiefiles.com/packages/lf20_znxedwj6.json',
                //       fit: BoxFit.cover),
                // ),
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Lottie.network(
                      "https://assets1.lottiefiles.com/packages/lf20_m3ixidnq.json"),
                ),
                const Text(
                  'Vous avez terminé le test ',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
            // : Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       SizedBox(
            //         height: 200,
            //         width: 200,
            //         child: Lottie.network(
            //             'https://assets10.lottiefiles.com/private_files/lf30_jq4i7W.json',
            //             fit: BoxFit.cover),
            //       ),
            //       const Text(
            //         "Vous n'avez pas réussi le test",
            //         style: TextStyle(
            //             fontSize: 20.0,
            //             color: Colors.black,
            //             fontWeight: FontWeight.bold),
            //       ),
            //     ],
            //   )
          ],
        ),
      ),
    );
  }
}
