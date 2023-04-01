class OrdersDetailsModel {
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
  String? countItem;
  String? priceItem;
  String? cartId;
  String? cartUserId;
  String? cartItemId;
  String? cartOrder;
  String? subId;
  String? subItemId;
  String? subColor;
  String? subCount;
  String? subPrice;
  String? subDiscount;
  String? subImage;
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
  String? subDiscountedPrice;

  OrdersDetailsModel(
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
      this.countItem,
      this.priceItem,
      this.cartId,
      this.cartUserId,
      this.cartItemId,
      this.cartOrder,
      this.subId,
      this.subItemId,
      this.subColor,
      this.subCount,
      this.subPrice,
      this.subDiscount,
      this.subImage,
      this.itId,
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
      this.subDiscountedPrice});

  OrdersDetailsModel.fromJson(Map<String, dynamic> json) {
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
    countItem = json['CountItem'];
    priceItem = json['PriceItem'];
    cartId = json['cart_id'];
    cartUserId = json['cart_user_id'];
    cartItemId = json['cart_item_id'];
    cartOrder = json['cart_order'];
    subId = json['sub_id'];
    subItemId = json['sub_item_id'];
    subColor = json['sub_color'];
    subCount = json['sub_count'];
    subPrice = json['sub_price'];
    subDiscount = json['sub_discount'];
    subImage = json['sub_image'];
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
    subDiscountedPrice = json['sub_discounted_price'];
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
    data['CountItem'] = countItem;
    data['PriceItem'] = priceItem;
    data['cart_id'] = cartId;
    data['cart_user_id'] = cartUserId;
    data['cart_item_id'] = cartItemId;
    data['cart_order'] = cartOrder;
    data['sub_id'] = subId;
    data['sub_item_id'] = subItemId;
    data['sub_color'] = subColor;
    data['sub_count'] = subCount;
    data['sub_price'] = subPrice;
    data['sub_discount'] = subDiscount;
    data['sub_image'] = subImage;
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
    data['sub_discounted_price'] = subDiscountedPrice;
    return data;
  }
}
