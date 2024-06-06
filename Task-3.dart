
Future<String?> fetchNullableData() async {
  await Future.delayed(Duration(seconds: 2));
  return null;
}

void main() async {
  String? data = await fetchNullableData();
  print(data ?? 'No data'); 
}
