
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Hello from the Future';
}

void main() async {
  try {
    String data = await fetchData();
    print(data); 
  } catch (e) {
    print(e);
  }
}
