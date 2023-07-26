import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 375,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              final int questionNumber = (data['question_index'] as int) + 1;
              final bool isCorrect =
                  data['correct_answer'] == data['user_answer'];
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.only(right: 15.0),
                    // ignore: unnecessary_const
                    decoration: BoxDecoration(
                        color: isCorrect
                            ? const Color.fromARGB(255, 36, 191, 239)
                            : const Color.fromARGB(255, 227, 79, 237),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(500))),
                    child: Text(
                      questionNumber.toString(),
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.lato(
                            color: Colors.purple[50],
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          data['user_answer'] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 175, 160, 251)),
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 109, 205, 247)),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
