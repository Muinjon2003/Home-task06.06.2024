
Stream<int?> countNullableStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i % 2 == 0 ? null : i;
  }
}

void main() async {
  await for (int? value in countNullableStream(5)) {
    print(value ?? 'null'); 
  }
}
