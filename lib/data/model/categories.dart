class CategoriesModel {
  String? catId;
  String? catName;
  String? catNameAr;
  String? catImage;
  String? catDate;

  CategoriesModel(
      {this.catId, this.catName, this.catNameAr, this.catImage, this.catDate});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    catId = json['cat_id'];
    catName = json['cat_name'];
    catNameAr = json['cat_name_ar'];
    catImage = json['cat_image'];
    catDate = json['cat_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cat_id'] = catId;
    data['cat_name'] = catName;
    data['cat_name_ar'] = catNameAr;
    data['cat_image'] = catImage;
    data['cat_date'] = catDate;
    return data;
  }
}
