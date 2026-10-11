Future <String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Data fetched successfully!';
}
void main() async {
  print('Fetching data...');
  String result = await fetchData();
  print(result);
}