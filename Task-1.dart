
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Hello from the Future');
}

void main() {
  fetchData().then((data) {
    print(data); 
  }).catchError((e) {
    print(e);
  });
}
