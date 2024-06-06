


Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 3));
  return 'Hello from the Future';
}

void main() async {
  try {
    String data = await fetchData().timeout(Duration(seconds: 2));
    print(data);
  } catch (e) {
    print('Operation timed out'); 
  }
}
