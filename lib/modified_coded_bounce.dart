class Calculator {
  double _result = 0;
  String _previousOperation = '';

  void add(double number) {
    _result += number;
    _previousOperation = _generateOperationString('Added', number);
  }

  double getResult() {
    return _result;
  }

  String getPreviousOperation() {
    return _previousOperation;
  }

  String _generateOperationString(String operation, double number) {
    return '$operation $number';
  }
}

void main() {
  Calculator calculator = Calculator();
  calculator.add(5);
  calculator.add(3);
  print('Result: ${calculator.getResult()}');
  print('Previous Operation: ${calculator.getPreviousOperation()}');
}

class Calculator2 {
  double _result = 0;
  String _previousOperation = '';

  void subtract(double number) {
    _result -= number;
    _previousOperation = _generateOperationString('Subtracted', number);
  }

  double getResult() {
    return _result;
  }

  String getPreviousOperation() {
    return _previousOperation;
  }

  String _generateOperationString(String operation, double number) {
    return '$operation $number';
  }
}

// void main() {
// Calculator calculator = Calculator();
// calculator.subtract(4);
// calculator.subtract(2);
// print('Result: ${calculator.getResult()}');
// print('Previous Operation: ${calculator.getPreviousOperation()}');
// }