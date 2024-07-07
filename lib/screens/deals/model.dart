// class Restaurant {
//   String? id;
//   Address? address;
//   Menu? menu;
//   Null? logo;
//   Null? logoUrl;
//   Null? photo;
//   String? photoUrl;
//   String? heroPhotoUrl;
//   Null? locationMapUrl;
//   int? hygineRating;
//   String? rating;
//   int? affordability;
//   bool? hasReservation;
//   bool? hasOrder;
//   String? commissionRate;
//   int? baseDeliveryFee;
//   int? extraDeliveryFee;
//   int? adminFee;
//   String? averageDiningTime;
//   int? maxPeoplePerReservation;
//   int? reservationTimeInterval;
//   int? minOrderPrice;
//   bool? hasDelivery;
//   bool? hasCollection;
//   String? slug;
//   String? name;
//   String? phoneNumber;
//   String? email;
//   String? description;
//   Hours? hours;
//   String? stripeAccountId;
//   bool? isActive;
//   Null? branding;
//   int? manager;
//   List<Null>? tags;

//   Restaurant(
//       {this.id,
//       this.address,
//       this.menu,
//       this.logo,
//       this.logoUrl,
//       this.photo,
//       this.photoUrl,
//       this.heroPhotoUrl,
//       this.locationMapUrl,
//       this.hygineRating,
//       this.rating,
//       this.affordability,
//       this.hasReservation,
//       this.hasOrder,
//       this.commissionRate,
//       this.baseDeliveryFee,
//       this.extraDeliveryFee,
//       this.adminFee,
//       this.averageDiningTime,
//       this.maxPeoplePerReservation,
//       this.reservationTimeInterval,
//       this.minOrderPrice,
//       this.hasDelivery,
//       this.hasCollection,
//       this.slug,
//       this.name,
//       this.phoneNumber,
//       this.email,
//       this.description,
//       this.hours,
//       this.stripeAccountId,
//       this.isActive,
//       this.branding,
//       this.manager,
//       this.tags});

//   Restaurant.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     address = json['address'] != null ? new Address.fromJson(json['address']) : null;
//     menu = json['menu'] != null ? new Menu.fromJson(json['menu']) : null;
//     logo = json['logo'];
//     logoUrl = json['logo_url'];
//     photo = json['photo'];
//     photoUrl = json['photo_url'];
//     heroPhotoUrl = json['hero_photo_url'];
//     locationMapUrl = json['location_map_url'];
//     hygineRating = json['hygine_rating'];
//     rating = json['rating'];
//     affordability = json['affordability'];
//     hasReservation = json['has_reservation'];
//     hasOrder = json['has_order'];
//     commissionRate = json['commission_rate'];
//     baseDeliveryFee = json['base_delivery_fee'];
//     extraDeliveryFee = json['extra_delivery_fee'];
//     adminFee = json['admin_fee'];
//     averageDiningTime = json['average_dining_time'];
//     maxPeoplePerReservation = json['max_people_per_reservation'];
//     reservationTimeInterval = json['reservation_time_interval'];
//     minOrderPrice = json['min_order_price'];
//     hasDelivery = json['has_delivery'];
//     hasCollection = json['has_collection'];
//     slug = json['slug'];
//     name = json['name'];
//     phoneNumber = json['phone_number'];
//     email = json['email'];
//     description = json['description'];
//     hours = json['hours'] != null ? new Hours.fromJson(json['hours']) : null;
//     stripeAccountId = json['stripe_account_id'];
//     isActive = json['is_active'];
//     branding = json['branding'];
//     manager = json['manager'];
//     // if (json['tags'] != null) {
//     //   tags = <Null>[];
//     //   json['tags'].forEach((v) {
//     //     tags!.add(new Null.fromJson(v));
//     //   });
//     // }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = id;
//     if (address != null) {
//       data['address'] = address!.toJson();
//     }
//     if (menu != null) {
//       data['menu'] = menu!.toJson();
//     }
//     data['logo'] = logo;
//     data['logo_url'] = logoUrl;
//     data['photo'] = photo;
//     data['photo_url'] = photoUrl;
//     data['hero_photo_url'] = heroPhotoUrl;
//     data['location_map_url'] = locationMapUrl;
//     data['hygine_rating'] = hygineRating;
//     data['rating'] = rating;
//     data['affordability'] = affordability;
//     data['has_reservation'] = hasReservation;
//     data['has_order'] = hasOrder;
//     data['commission_rate'] = commissionRate;
//     data['base_delivery_fee'] = baseDeliveryFee;
//     data['extra_delivery_fee'] = extraDeliveryFee;
//     data['admin_fee'] = adminFee;
//     data['average_dining_time'] = averageDiningTime;
//     data['max_people_per_reservation'] = maxPeoplePerReservation;
//     data['reservation_time_interval'] = reservationTimeInterval;
//     data['min_order_price'] = minOrderPrice;
//     data['has_delivery'] = hasDelivery;
//     data['has_collection'] = hasCollection;
//     data['slug'] = slug;
//     data['name'] = name;
//     data['phone_number'] = phoneNumber;
//     data['email'] = email;
//     data['description'] = description;
//     if (hours != null) {
//       data['hours'] = hours!.toJson();
//     }
//     data['stripe_account_id'] = stripeAccountId;
//     data['is_active'] = isActive;
//     data['branding'] = branding;
//     data['manager'] = manager;
//     // if (tags != null) {
//     //   data['tags'] = tags!.map((v) => v.toJson()).toList();
//     // }
//     return data;
//   }
// }

// class Address {
//   int? id;
//   String? line1;
//   String? line2;
//   String? city;
//   String? postcode;

//   Address({this.id, this.line1, this.line2, this.city, this.postcode});

//   Address.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     line1 = json['line1'];
//     line2 = json['line2'];
//     city = json['city'];
//     postcode = json['postcode'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = id;
//     data['line1'] = line1;
//     data['line2'] = line2;
//     data['city'] = city;
//     data['postcode'] = postcode;
//     return data;
//   }
// }

// class Menu {
//   int? id;
//   List<Items>? items;
//   String? name;
//   String? description;

//   Menu({this.id, this.items, this.name, this.description});

//   Menu.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     if (json['items'] != null) {
//       items = <Items>[];
//       json['items'].forEach((v) {
//         items!.add(new Items.fromJson(v));
//       });
//     }
//     name = json['name'];
//     description = json['description'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = id;
//     if (items != null) {
//       data['items'] = items!.map((v) => v.toJson()).toList();
//     }
//     data['name'] = name;
//     data['description'] = description;
//     return data;
//   }
// }

// class Items {
//   int? id;
//   List<Options>? options;
//   Category? category;
//   String? name;
//   String? description;
//   int? price;
//   Null? image;
//   String? photoUrl;
//   Null? calories;
//   int? spicyLevel;
//   int? order;
//   bool? isAvailable;
//   bool? isPopular;
//   int? menu;
//   List<Null>? diataries;

//   Items(
//       {this.id,
//       this.options,
//       this.category,
//       this.name,
//       this.description,
//       this.price,
//       this.image,
//       this.photoUrl,
//       this.calories,
//       this.spicyLevel,
//       this.order,
//       this.isAvailable,
//       this.isPopular,
//       this.menu,
//       this.diataries});

//   Items.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     if (json['options'] != null) {
//       options = <Options>[];
//       json['options'].forEach((v) {
//         options!.add(new Options.fromJson(v));
//       });
//     }
//     category = json['category'] != null
//         ? new Category.fromJson(json['category'])
//         : null;
//     name = json['name'];
//     description = json['description'];
//     price = json['price'];
//     image = json['image'];
//     photoUrl = json['photo_url'];
//     calories = json['calories'];
//     spicyLevel = json['spicy_level'];
//     order = json['order'];
//     isAvailable = json['is_available'];
//     isPopular = json['is_popular'];
//     menu = json['menu'];
//     // if (json['diataries'] != null) {
//     //   diataries = <Null>[];
//     //   json['diataries'].forEach((v) {
//     //     diataries!.add(new Null.fromJson(v));
//     //   });
//     // }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = id;
//     if (options != null) {
//       data['options'] = options!.map((v) => v.toJson()).toList();
//     }
//     if (category != null) {
//       data['category'] = category!.toJson();
//     }
//     data['name'] = name;
//     data['description'] = description;
//     data['price'] = price;
//     data['image'] = image;
//     data['photo_url'] = photoUrl;
//     data['calories'] = calories;
//     data['spicy_level'] = spicyLevel;
//     data['order'] = order;
//     data['is_available'] = isAvailable;
//     data['is_popular'] = isPopular;
//     data['menu'] = menu;
//     // if (diataries != null) {
//     //   data['diataries'] = diataries!.map((v) => v.toJson()).toList();
//     // }
//     return data;
//   }
// }

// class Options {
//   int? id;
//   String? name;
//   String? displayName;
//   int? price;
//   String? description;
//   bool? required;
//   String? type;
//   int? selectionLimit;
//   int? order;
//   bool? isActive;
//   Null? menu;

//   Options(
//       {this.id,
//       this.name,
//       this.displayName,
//       this.price,
//       this.description,
//       this.required,
//       this.type,
//       this.selectionLimit,
//       this.order,
//       this.isActive,
//       this.menu});

//   Options.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     displayName = json['display_name'];
//     price = json['price'];
//     description = json['description'];
//     required = json['required'];
//     type = json['type'];
//     selectionLimit = json['selection_limit'];
//     order = json['order'];
//     isActive = json['is_active'];
//     menu = json['menu'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = id;
//     data['name'] = name;
//     data['display_name'] = displayName;
//     data['price'] = price;
//     data['description'] = description;
//     data['required'] = required;
//     data['type'] = type;
//     data['selection_limit'] = selectionLimit;
//     data['order'] = order;
//     data['is_active'] = isActive;
//     data['menu'] = menu;
//     return data;
//   }
// }

// class Category {
//   int? id;
//   String? name;
//   String? description;
//   int? order;
//   Null? menu;

//   Category({this.id, this.name, this.description, this.order, this.menu});

//   Category.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     description = json['description'];
//     order = json['order'];
//     menu = json['menu'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = id;
//     data['name'] = name;
//     data['description'] = description;
//     data['order'] = order;
//     data['menu'] = menu;
//     return data;
//   }
// }

// class Hours {
//   Day? friday;
//   Day? monday;
//   Day? sunday;
//   Day? tuesday;
//   Day? saturday;
//   Day? thursday;
//   Day? wednesday;

//   Hours(
//       {this.friday,
//       this.monday,
//       this.sunday,
//       this.tuesday,
//       this.saturday,
//       this.thursday,
//       this.wednesday});

//   Hours.fromJson(Map<String, dynamic> json) {
//     friday =
//         json['friday'] != null ? new Day.fromJson(json['friday']) : null;
//     monday =
//         json['monday'] != null ? new Day.fromJson(json['monday']) : null;
//     sunday =
//         json['sunday'] != null ? new Day.fromJson(json['sunday']) : null;
//     tuesday =
//         json['tuesday'] != null ? new Day.fromJson(json['tuesday']) : null;
//     saturday =
//         json['saturday'] != null ? new Day.fromJson(json['saturday']) : null;
//     thursday =
//         json['thursday'] != null ? new Day.fromJson(json['thursday']) : null;
//     wednesday = json['wednesday'] != null
//         ? new Day.fromJson(json['wednesday'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (friday != null) {
//       data['friday'] = friday!.toJson();
//     }
//     if (monday != null) {
//       data['monday'] = monday!.toJson();
//     }
//     if (sunday != null) {
//       data['sunday'] = sunday!.toJson();
//     }
//     if (tuesday != null) {
//       data['tuesday'] = tuesday!.toJson();
//     }
//     if (saturday != null) {
//       data['saturday'] = saturday!.toJson();
//     }
//     if (thursday != null) {
//       data['thursday'] = thursday!.toJson();
//     }
//     if (wednesday != null) {
//       data['wednesday'] = wednesday!.toJson();
//     }
//     return data;
//   }
// }

// class Day {
//   String? closing;
//   String? opening;

//   Day({this.closing, this.opening});

//   Day.fromJson(Map<String, dynamic> json) {
//     closing = json['closing'];
//     opening = json['opening'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['closing'] = closing;
//     data['opening'] = opening;
//     return data;
//   }
// }


class Restaurant {
  String? id;
  Address? address;
  Menu? menu;
  Null? logo;
  Null? logoUrl;
  Null? photo;
  String? photoUrl;
  String? heroPhotoUrl;
  Null? locationMapUrl;
  int? hygineRating;
  String? rating;
  int? affordability;
  bool? hasReservation;
  bool? hasOrder;
  String? commissionRate;
  int? baseDeliveryFee;
  int? extraDeliveryFee;
  int? adminFee;
  String? averageDiningTime;
  int? maxPeoplePerReservation;
  int? reservationTimeInterval;
  int? minOrderPrice;
  bool? hasDelivery;
  bool? hasCollection;
  String? slug;
  String? name;
  String? phoneNumber;
  String? email;
  String? description;
  Hours? hours;
  String? stripeAccountId;
  bool? isActive;
  Null? branding;
  int? manager;
  List<Null>? tags;

  Restaurant(
      {this.id,
      this.address,
      this.menu,
      this.logo,
      this.logoUrl,
      this.photo,
      this.photoUrl,
      this.heroPhotoUrl,
      this.locationMapUrl,
      this.hygineRating,
      this.rating,
      this.affordability,
      this.hasReservation,
      this.hasOrder,
      this.commissionRate,
      this.baseDeliveryFee,
      this.extraDeliveryFee,
      this.adminFee,
      this.averageDiningTime,
      this.maxPeoplePerReservation,
      this.reservationTimeInterval,
      this.minOrderPrice,
      this.hasDelivery,
      this.hasCollection,
      this.slug,
      this.name,
      this.phoneNumber,
      this.email,
      this.description,
      this.hours,
      this.stripeAccountId,
      this.isActive,
      this.branding,
      this.manager,
      this.tags});

  Restaurant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    address = json['address'] != null ? new Address.fromJson(json['address']) : null;
    menu = json['menu'] != null ? new Menu.fromJson(json['menu']) : null;
    logo = json['logo'];
    logoUrl = json['logo_url'];
    photo = json['photo'];
    photoUrl = json['photo_url'];
    heroPhotoUrl = json['hero_photo_url'];
    locationMapUrl = json['location_map_url'];
    hygineRating = json['hygine_rating'];
    rating = json['rating'];
    affordability = json['affordability'];
    hasReservation = json['has_reservation'];
    hasOrder = json['has_order'];
    commissionRate = json['commission_rate'];
    baseDeliveryFee = json['base_delivery_fee'];
    extraDeliveryFee = json['extra_delivery_fee'];
    adminFee = json['admin_fee'];
    averageDiningTime = json['average_dining_time'];
    maxPeoplePerReservation = json['max_people_per_reservation'];
    reservationTimeInterval = json['reservation_time_interval'];
    minOrderPrice = json['min_order_price'];
    hasDelivery = json['has_delivery'];
    hasCollection = json['has_collection'];
    slug = json['slug'];
    name = json['name'];
    phoneNumber = json['phone_number'];
    email = json['email'];
    description = json['description'];
    hours = json['hours'] != null ? new Hours.fromJson(json['hours']) : null;
    stripeAccountId = json['stripe_account_id'];
    isActive = json['is_active'];
    branding = json['branding'];
    manager = json['manager'];
    // if (json['tags'] != null) {
    //   tags = <Null>[];
    //   json['tags'].forEach((v) {
    //     tags!.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    if (address != null) {
      data['address'] = address!.toJson();
    }
    if (menu != null) {
      data['menu'] = menu!.toJson();
    }
    data['logo'] = logo;
    data['logo_url'] = logoUrl;
    data['photo'] = photo;
    data['photo_url'] = photoUrl;
    data['hero_photo_url'] = heroPhotoUrl;
    data['location_map_url'] = locationMapUrl;
    data['hygine_rating'] = hygineRating;
    data['rating'] = rating;
    data['affordability'] = affordability;
    data['has_reservation'] = hasReservation;
    data['has_order'] = hasOrder;
    data['commission_rate'] = commissionRate;
    data['base_delivery_fee'] = baseDeliveryFee;
    data['extra_delivery_fee'] = extraDeliveryFee;
    data['admin_fee'] = adminFee;
    data['average_dining_time'] = averageDiningTime;
    data['max_people_per_reservation'] = maxPeoplePerReservation;
    data['reservation_time_interval'] = reservationTimeInterval;
    data['min_order_price'] = minOrderPrice;
    data['has_delivery'] = hasDelivery;
    data['has_collection'] = hasCollection;
    data['slug'] = slug;
    data['name'] = name;
    data['phone_number'] = phoneNumber;
    data['email'] = email;
    data['description'] = description;
    if (hours != null) {
      data['hours'] = hours!.toJson();
    }
    data['stripe_account_id'] = stripeAccountId;
    data['is_active'] = isActive;
    data['branding'] = branding;
    data['manager'] = manager;
    // if (this.tags != null) {
    //   data['tags'] = this.tags!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Address {
  int? id;
  String? line1;
  String? line2;
  String? city;
  String? postcode;

  Address({this.id, this.line1, this.line2, this.city, this.postcode});

  Address.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    line1 = json['line1'];
    line2 = json['line2'];
    city = json['city'];
    postcode = json['postcode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['line1'] = line1;
    data['line2'] = line2;
    data['city'] = city;
    data['postcode'] = postcode;
    return data;
  }
}

class Menu {
  int? id;
  List<Items>? items;
  String? name;
  String? description;

  Menu({this.id, this.items, this.name, this.description});

  Menu.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    data['name'] = name;
    data['description'] = description;
    return data;
  }
}

class Items {
  int? id;
  List<Options>? options;
  Category? category;
  String? name;
  String? description;
  int? price;
  Null? image;
  String? photoUrl;
  Null? calories;
  int? spicyLevel;
  int? order;
  bool? isAvailable;
  bool? isPopular;
  int? menu;
  List<Null>? diataries;

  Items(
      {this.id,
      this.options,
      this.category,
      this.name,
      this.description,
      this.price,
      this.image,
      this.photoUrl,
      this.calories,
      this.spicyLevel,
      this.order,
      this.isAvailable,
      this.isPopular,
      this.menu,
      this.diataries});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['options'] != null) {
      options = <Options>[];
      json['options'].forEach((v) {
        options!.add(new Options.fromJson(v));
      });
    }
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    name = json['name'];
    description = json['description'];
    price = json['price'];
    image = json['image'];
    photoUrl = json['photo_url'];
    calories = json['calories'];
    spicyLevel = json['spicy_level'];
    order = json['order'];
    isAvailable = json['is_available'];
    isPopular = json['is_popular'];
    menu = json['menu'];
    // if (json['diataries'] != null) {
    //   diataries = <Null>[];
    //   json['diataries'].forEach((v) {
    //     diataries!.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    if (options != null) {
      data['options'] = options!.map((v) => v.toJson()).toList();
    }
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['name'] = name;
    data['description'] = description;
    data['price'] = price;
    data['image'] = image;
    data['photo_url'] = photoUrl;
    data['calories'] = calories;
    data['spicy_level'] = spicyLevel;
    data['order'] = order;
    data['is_available'] = isAvailable;
    data['is_popular'] = isPopular;
    data['menu'] = menu;
    // if (this.diataries != null) {
    //   data['diataries'] = this.diataries!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Options {
  int? id;
  String? name;
  String? displayName;
  int? price;
  String? description;
  bool? required;
  String? type;
  int? selectionLimit;
  int? order;
  bool? isActive;
  Null? menu;

  Options(
      {this.id,
      this.name,
      this.displayName,
      this.price,
      this.description,
      this.required,
      this.type,
      this.selectionLimit,
      this.order,
      this.isActive,
      this.menu});

  Options.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    displayName = json['display_name'];
    price = json['price'];
    description = json['description'];
    required = json['required'];
    type = json['type'];
    selectionLimit = json['selection_limit'];
    order = json['order'];
    isActive = json['is_active'];
    menu = json['menu'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['display_name'] = displayName;
    data['price'] = price;
    data['description'] = description;
    data['required'] = required;
    data['type'] = type;
    data['selection_limit'] = selectionLimit;
    data['order'] = order;
    data['is_active'] = isActive;
    data['menu'] = menu;
    return data;
  }
}

class Category {
  int? id;
  String? name;
  String? description;
  int? order;
  Null? menu;

  Category({this.id, this.name, this.description, this.order, this.menu});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    order = json['order'];
    menu = json['menu'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['order'] = order;
    data['menu'] = menu;
    return data;
  }
}

class Hours {
  Day? friday;
  Day? monday;
  Day? sunday;
  Day? tuesday;
  Day? saturday;
  Day? thursday;
  Day? wednesday;

  Hours(
      {this.friday,
      this.monday,
      this.sunday,
      this.tuesday,
      this.saturday,
      this.thursday,
      this.wednesday});

  Hours.fromJson(Map<String, dynamic> json) {
    friday =
        json['friday'] != null ? new Day.fromJson(json['friday']) : null;
    monday =
        json['monday'] != null ? new Day.fromJson(json['monday']) : null;
    sunday =
        json['sunday'] != null ? new Day.fromJson(json['sunday']) : null;
    tuesday =
        json['tuesday'] != null ? new Day.fromJson(json['tuesday']) : null;
    saturday =
        json['saturday'] != null ? new Day.fromJson(json['saturday']) : null;
    thursday =
        json['thursday'] != null ? new Day.fromJson(json['thursday']) : null;
    wednesday = json['wednesday'] != null
        ? new Day.fromJson(json['wednesday'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (friday != null) {
      data['friday'] = friday!.toJson();
    }
    if (monday != null) {
      data['monday'] = monday!.toJson();
    }
    if (sunday != null) {
      data['sunday'] = sunday!.toJson();
    }
    if (tuesday != null) {
      data['tuesday'] = tuesday!.toJson();
    }
    if (saturday != null) {
      data['saturday'] = saturday!.toJson();
    }
    if (thursday != null) {
      data['thursday'] = thursday!.toJson();
    }
    if (wednesday != null) {
      data['wednesday'] = wednesday!.toJson();
    }
    return data;
  }
}

class Day {
  String? closing;
  String? opening;

  Day({this.closing, this.opening});

  Day.fromJson(Map<String, dynamic> json) {
    closing = json['closing'];
    opening = json['opening'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['closing'] = closing;
    data['opening'] = opening;
    return data;
  }
}


// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// class DealsModel {
//   String id;
//   String name;
//   String serving;
//   String time;
//   int price;
//   int oldPrice;
//   DealsModel({
//     required this.id,
//     required this.name,
//     required this.serving,
//     required this.time,
//     required this.price,
//     required this.oldPrice,
//   });

//   DealsModel copyWith({
//     String? id,
//     String? name,
//     String? serving,
//     String? time,
//     int? price,
//     int? oldPrice,
//   }) {
//     return DealsModel(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       serving: serving ?? this.serving,
//       time: time ?? this.time,
//       price: price ?? this.price,
//       oldPrice: oldPrice ?? this.oldPrice,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'name': name,
//       'serving': serving,
//       'time': time,
//       'price': price,
//       'oldPrice': oldPrice,
//     };
//   }

//   factory DealsModel.fromMap(Map<String, dynamic> map) {
//     return DealsModel(
//       id: map['id'] as String,
//       name: map['name'] as String,
//       serving: map['serving'] as String,
//       time: map['time'] as String,
//       price: map['price'] as int,
//       oldPrice: map['oldPrice'] as int,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory DealsModel.fromJson(String source) =>
//       DealsModel.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'DealsModel(id: $id, name: $name, serving: $serving, time: $time, price: $price, oldPrice: $oldPrice)';
//   }

//   @override
//   bool operator ==(covariant DealsModel other) {
//     if (identical(this, other)) return true;

//     return other.id == id &&
//         other.name == name &&
//         other.serving == serving &&
//         other.time == time &&
//         other.price == price &&
//         other.oldPrice == oldPrice;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//         name.hashCode ^
//         serving.hashCode ^
//         time.hashCode ^
//         price.hashCode ^
//         oldPrice.hashCode;
//   }
// }
