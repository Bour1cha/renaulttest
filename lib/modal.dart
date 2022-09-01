class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool isCorrect;
  const Option({required this.isCorrect, required this.text});
}

final questions = [
  Question(text: "De quel couleur est le cheval blanc d'henry IV ?", options: [
    const Option(text: "Vert", isCorrect: false),
    const Option(text: "Rouge", isCorrect: false),
    const Option(text: "Bleu", isCorrect: false),
    const Option(text: "Blanc", isCorrect: true),
  ]),
  Question(text: "Qui est le ballon d'or 2004 ?", options: [
    const Option(text: "Zinedine Zidane", isCorrect: false),
    const Option(text: "Pavel Nedved", isCorrect: false),
    const Option(text: "Thierry Henry", isCorrect: false),
    const Option(text: "Andreï Chevtchenko", isCorrect: true),
  ]),
  Question(
      text: "Combien de roues possendent un véhicule nommée voiture ?",
      options: [
        const Option(text: "1", isCorrect: false),
        const Option(text: "2", isCorrect: false),
        const Option(text: "3", isCorrect: false),
        const Option(text: "4", isCorrect: true),
      ]),
  Question(
      text: "Qui est le plus jeune joueur de ligue 1 de l'histoire ?",
      options: [
        const Option(text: "Laurent Paganelli ", isCorrect: false),
        const Option(text: "Jeremy Menez", isCorrect: false),
        const Option(text: "Kyllian Mbappe", isCorrect: false),
        const Option(text: "Kalman Gerencseri", isCorrect: true),
      ]),
  Question(text: "Combien font 4 x 8 ?", options: [
    const Option(text: "68", isCorrect: false),
    const Option(text: "32", isCorrect: true),
    const Option(text: "47", isCorrect: false),
    const Option(text: "78", isCorrect: false),
  ]),
  Question(text: "Combien font 5 x 5 ?", options: [
    const Option(text: "10", isCorrect: false),
    const Option(text: "25", isCorrect: true),
    const Option(text: "5", isCorrect: false),
    const Option(text: "78", isCorrect: false),
  ]),
  Question(
      text: "En quelle année à eu lieu la révolution française ?",
      options: [
        const Option(text: "1758", isCorrect: false),
        const Option(text: "1757", isCorrect: false),
        const Option(text: "1789", isCorrect: true),
        const Option(text: "1788", isCorrect: false),
      ]),
  Question(text: "En quelle année Renault fut crée ?", options: [
    const Option(text: "1899", isCorrect: true),
    const Option(text: "1898", isCorrect: false),
    const Option(text: "1900", isCorrect: false),
    const Option(text: "1901", isCorrect: false),
  ]),
  Question(text: "Quel est le type du langage HTML", options: [
    const Option(text: "Programmation", isCorrect: false),
    const Option(text: "Balises", isCorrect: true),
    const Option(text: "Style", isCorrect: false),
    const Option(text: "Script", isCorrect: false),
  ]),
  Question(text: "Quel est le paradis fiscal parmis cette liste ?", options: [
    const Option(text: "Belgique", isCorrect: false),
    const Option(text: "Allemagne", isCorrect: false),
    const Option(text: "Corée du sud", isCorrect: false),
    const Option(text: "Malte", isCorrect: true),
  ]),
];
