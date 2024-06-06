Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    throw 'An error occurred';
  });
}

void main() {
  fetchData().then((data) {
    print(data);
  }).catchError((e) {
    print(e); 
  });
}
