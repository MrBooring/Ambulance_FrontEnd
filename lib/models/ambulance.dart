class Ambulance {
  final int ambulanceId;
  final String name;
  final String description;
  final String licenceNumber;
  final int capacity;
  final AmbulanceType ambulanceType;

  Ambulance({
    required this.ambulanceId,
    required this.name,
    required this.description,
    required this.licenceNumber,
    required this.capacity,
    required this.ambulanceType,
  });

  factory Ambulance.fromJson(Map<String, dynamic> json) => Ambulance(
        ambulanceId: json["ambulance_id"],
        name: json["name"],
        description: json["description"],
        licenceNumber: json["licenceNumber"],
        capacity: json["capacity"],
        ambulanceType: AmbulanceType.fromJson(json["ambulanceType"]),
      );

  Map<String, dynamic> toJson() => {
        "ambulance_id": ambulanceId,
        "name": name,
        "description": description,
        "licenceNumber": licenceNumber,
        "capacity": capacity,
        "ambulanceType": ambulanceType.toJson(),
      };
}

class AmbulanceType {
  final dynamic createdAt;
  final dynamic updatedAt;
  final int id;
  final String name;
  final String description;
  final int capacity;
  final List<Feature> features;

  AmbulanceType({
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.name,
    required this.description,
    required this.capacity,
    required this.features,
  });

  factory AmbulanceType.fromJson(Map<String, dynamic> json) => AmbulanceType(
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        id: json["id"],
        name: json["name"],
        description: json["description"],
        capacity: json["capacity"],
        features: List<Feature>.from(json["features"].map((x) => Feature.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "id": id,
        "name": name,
        "description": description,
        "capacity": capacity,
        "features": List<dynamic>.from(features.map((x) => x.toJson())),
      };
}

class Feature {
  final dynamic createdAt;
  final dynamic updatedAt;
  final String featureName;
  final String description;

  Feature({
    required this.createdAt,
    required this.updatedAt,
    required this.featureName,
    required this.description,
  });

  factory Feature.fromJson(Map<String, dynamic> json) => Feature(
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        featureName: json["featureName"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "featureName": featureName,
        "description": description,
      };
}
