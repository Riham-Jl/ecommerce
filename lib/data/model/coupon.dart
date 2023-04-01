class CouponModel {
  String? coupId;
  String? coupName;
  String? coupDiscount;
  String? coupCount;
  String? coupExpire;

  CouponModel(
      {this.coupId,
      this.coupName,
      this.coupDiscount,
      this.coupCount,
      this.coupExpire});

  CouponModel.fromJson(Map<String, dynamic> json) {
    coupId = json['coup_id'];
    coupName = json['coup_name'];
    coupDiscount = json['coup_discount'];
    coupCount = json['coup_count'];
    coupExpire = json['coup_expire'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['coup_id'] = coupId;
    data['coup_name'] = coupName;
    data['coup_discount'] = coupDiscount;
    data['coup_count'] = coupCount;
    data['coup_expire'] = coupExpire;
    return data;
  }
}
