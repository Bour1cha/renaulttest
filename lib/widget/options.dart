import 'package:flutter/material.dart';
import 'package:renaultest/modal.dart';

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget({
    Key? key,
    required this.question,
    required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: question.options
              .map((option) => buildOption(context, option))
              .toList(),
        ),
      );

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => onClickedOption(option),
              child: Container(
                width: 600,
                padding: const EdgeInsets.all(15.0),
                margin:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                decoration: BoxDecoration(
                    color: null,
                    border: Border.all(color: color),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      option.text,
                      style: const TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    getIconForOption(option, question),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect ? const Color.fromARGB(255, 255, 183, 0) : const Color.fromARGB(255, 255, 183, 0);
      } 
      // else if (option.isCorrect) {
      //   return Colors.green;
      // }
    }
    return Colors.grey.shade300;
  }

  Widget getIconForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect
            ? const Icon(Icons.check_circle, color: Colors.transparent)
            : const Icon(Icons.cancel, color: Colors.transparent);
      } 
      // else if (option.isCorrect) {
      //   return const Icon(Icons.check_circle, color: Colors.green);
      // }
    }
    return const SizedBox.shrink();
  }
}
