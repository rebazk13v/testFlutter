class Calculator {
  double _result = 0;
  String _previousOperation = '';

  void add(double number) {
    _result += number;
    _previousOperation = 'Added $number';
  }

  double getResult() {
    return _result;
  }

  String getPreviousOperation() {
    return _previousOperation;
  }
}

void main() {
  Calculator calculator = Calculator();
  calculator.add(5);
  calculator.add(3);
  print('Result: ${calculator.getResult()}');
  print('Previous Operation: ${calculator.getPreviousOperation()}');
}
