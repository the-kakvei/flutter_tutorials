class ImageModel {
  late int id;
  late String title;
  late String url;

  ImageModel(this.id, this.title, this.url);

  ImageModel.fromJson(Map<String, dynamic> parseJson) {
    id = parseJson['id'];
    title = parseJson['title'];
    url = parseJson['url'];
  }

  // Shorter form
  // ImageModel.fromJson(Map<String, dynamic> parseJson)
  //     : id = parseJson['id'],
  //       title = parseJson['title'],
  //       url = parseJson['url'];
}
