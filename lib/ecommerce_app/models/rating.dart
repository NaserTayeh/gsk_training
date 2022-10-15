class Rating {
  dynamic? rate;
  int? count;
  Rating.fromMap(Map<String, dynamic>? map) {
    this.rate = map?['rate'];
    this.count = map?['count'];
  }
}
