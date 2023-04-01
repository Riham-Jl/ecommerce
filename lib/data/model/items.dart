class ItemsModel {
  String? itId;
  String? itName;
  String? itNameAr;
  String? itDesc;
  String? itDescAr;
  String? itImage;
  String? itCount;
  String? itActive;
  String? itPrice;
  String? itDiscount;
  String? itDate;
  String? itCatId;
  String? itDiscountedPrice;
  String? rating;
  String? catId;
  String? catName;
  String? catNameAr;
  String? catImage;
  String? catDate;
  String? favorite;

  ItemsModel(
      {this.itId,
      this.itName,
      this.itNameAr,
      this.itDesc,
      this.itDescAr,
      this.itImage,
      this.itCount,
      this.itActive,
      this.itPrice,
      this.itDiscount,
      this.itDate,
      this.itCatId,
      this.itDiscountedPrice,
      this.rating,
      this.catId,
      this.catName,
      this.catNameAr,
      this.catImage,
      this.catDate,
      this.favorite});

  ItemsModel.fromJson(Map<String, dynamic> json) {
    itId = json['it_id'];
    itName = json['it_name'];
    itNameAr = json['it_name_ar'];
    itDesc = json['it_desc'];
    itDescAr = json['it_desc_ar'];
    itImage = json['it_image'];
    itCount = json['it_count'];
    itActive = json['it_active'];
    itPrice = json['it_price'];
    itDiscount = json['it_discount'];
    itDate = json['it_date'];
    itCatId = json['it_cat_id'];
    itDiscountedPrice = json['it_discounted_price'];
    rating = json['rating'];
    catId = json['cat_id'];
    catName = json['cat_name'];
    catNameAr = json['cat_name_ar'];
    catImage = json['cat_image'];
    catDate = json['cat_date'];
    favorite = json['favorite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['it_id'] = itId;
    data['it_name'] = itName;
    data['it_name_ar'] = itNameAr;
    data['it_desc'] = itDesc;
    data['it_desc_ar'] = itDescAr;
    data['it_image'] = itImage;
    data['it_count'] = itCount;
    data['it_active'] = itActive;
    data['it_price'] = itPrice;
    data['it_discount'] = itDiscount;
    data['it_date'] = itDate;
    data['it_cat_id'] = itCatId;
    data['it_discounted_price'] = itDiscountedPrice;
    data['rating'] = rating;
    data['cat_id'] = catId;
    data['cat_name'] = catName;
    data['cat_name_ar'] = catNameAr;
    data['cat_image'] = catImage;
    data['cat_date'] = catDate;
    data['favorite'] = favorite;
    return data;
  }
}