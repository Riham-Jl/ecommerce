class AddressModel {
  String? addressId;
  String? addressUserId;
  String? addressName;
  String? addressCity;
  String? addressStreet;
  String? addressBuilding;
  String? addressLat;
  String? addressLong;

  AddressModel(
      {this.addressId,
      this.addressUserId,
      this.addressName,
      this.addressCity,
      this.addressStreet,
      this.addressBuilding,
      this.addressLat,
      this.addressLong});

  AddressModel.fromJson(Map<String, dynamic> json) {
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
