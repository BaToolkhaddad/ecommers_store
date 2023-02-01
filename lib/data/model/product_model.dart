class AllProductModel {
    final String id;
  final String price;
  final String? title;
  final String? image;
  final String? discription;
    bool isFavorite;
  AllProductModel( {this.title,required this.price,required this.id, this.image, this.discription,required this.isFavorite});


}
