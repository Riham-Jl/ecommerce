class MyOrdersModel {
  String? orderId;
  String? orderUserId;
  String? orderPaymentMethod;
  String? orederDelivery;
  String? orderAddressId;
  String? orderDeliveryPrice;
  String? orderCouponId;
  String? orderTotalPrice;
  String? orderDatetime;
  String? orderStatus;
  String? addressId;
  String? addressUserId;
  String? addressName;
  String? addressCity;
  String? addressStreet;
  String? addressBuilding;
  String? addressLat;
  String? addressLong;

  MyOrdersModel(
      {this.orderId,
      this.orderUserId,
      this.orderPaymentMethod,
      this.orederDelivery,
      this.orderAddressId,
      this.orderDeliveryPrice,
      this.orderCouponId,
      this.orderTotalPrice,
      this.orderDatetime,
      this.orderStatus,
      this.addressId,
      this.addressUserId,
      this.addressName,
      this.addressCity,
      this.addressStreet,
      this.addressBuilding,
      this.addressLat,
      this.addressLong});

  MyOrdersModel.fromJson(Map<String, dynamic> json) {
    orderId = json['order_id'];
    orderUserId = json['order_user_id'];
    orderPaymentMethod = json['order_payment_method'];
    orederDelivery = json['oreder_delivery'];
    orderAddressId = json['order_address_id'];
    orderDeliveryPrice = json['order_delivery_price'];
    orderCouponId = json['order_coupon_id'];
    orderTotalPrice = json['order_total_price'];
    orderDatetime = json['order_datetime'];
    orderStatus = json['order_status'];
    addressId = json['address_id'];
    addressUserId = json['address_user_id'];
    addressName = json['address_name'];
    addressCity = json['address_city'];
    addressStreet = json['address_street'];
    addressBuilding = json['address_building'];
    addressLat = json['address_lat'];
    addressLong = json['address_long'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['order_id'] = orderId;
    data['order_user_id'] = orderUserId;
    data['order_payment_method'] = orderPaymentMethod;
    data['oreder_delivery'] = orederDelivery;
    data['order_address_id'] = orderAddressId;
    data['order_delivery_price'] = orderDeliveryPrice;
    data['order_coupon_id'] = orderCouponId;
    data['order_total_price'] = orderTotalPrice;
    data['order_datetime'] = orderDatetime;
    data['order_status'] = orderStatus;
    data['address_id'] = addressId;
    data['address_user_id'] = addressUserId;
    data['address_name'] = addressName;
    data['address_city'] = addressCity;
    data['address_street'] = addressStreet;
    data['address_building'] = addressBuilding;
    data['address_lat'] = addressLat;
    data['address_long'] = addressLong;
    return data;
  }
}
