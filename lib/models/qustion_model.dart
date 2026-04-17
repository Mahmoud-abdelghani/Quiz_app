class QustionModel {
  final String qTxt;
  final List<AnswerModel> answers;

  QustionModel({required this.qTxt, required this.answers});
}

class AnswerModel {
  final String answerTxt;
  final bool isTrue;

  AnswerModel({required this.answerTxt, required this.isTrue});
}

List<QustionModel> questions = [
  QustionModel(qTxt: 'Who is the owner of Flutter ?', answers: [
    AnswerModel(answerTxt: 'Nokia', isTrue: false),
    AnswerModel(answerTxt: 'Google', isTrue: true),
    AnswerModel(answerTxt: 'Apple', isTrue: false),
    AnswerModel(answerTxt: 'Microsoft', isTrue: false),
  ]),
  QustionModel(qTxt: 'Who is the owner of Iphone ?', answers: [
    AnswerModel(answerTxt: 'Nokia', isTrue: false),
    AnswerModel(answerTxt: 'Google', isTrue: false),
    AnswerModel(answerTxt: 'Apple', isTrue: true),
    AnswerModel(answerTxt: 'Microsoft', isTrue: false),
  ]),
  QustionModel(qTxt: 'Who is the owner of Windows ?', answers: [
    AnswerModel(answerTxt: 'Nokia', isTrue: false),
    AnswerModel(answerTxt: 'Google', isTrue: false),
    AnswerModel(answerTxt: 'Apple', isTrue: false),
    AnswerModel(answerTxt: 'Microsoft', isTrue: true),
  ]),
  QustionModel(qTxt: 'Is microsoft is the owner of flutter ?', answers: 
  [
    AnswerModel(answerTxt: 'True', isTrue: false),
    AnswerModel(answerTxt: 'False', isTrue: true),
  ]
  )

];
