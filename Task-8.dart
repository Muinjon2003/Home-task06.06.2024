Future<void> fetchData1() async {
  await Future.delayed(Duration(seconds: 2));
  print('Data 1 fetched');
}

Future<void> fetchData2() async {
  await Future.delayed(Duration(seconds: 3));
  print('Data 2 fetched');
}

void main() async {
  await Future.wait([fetchData1(), fetchData2()]);
  print('All data fetched');
}
