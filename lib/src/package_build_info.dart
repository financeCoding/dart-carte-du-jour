part of carte_de_jour;

/**
 * Class representation of BUILD_VERSION file.
 */
class PackageBuildInfo {
  String name;
  String version;
  String datetime;
  bool isBuilt;

  PackageBuildInfo(this.name, this.version, this.datetime, this.isBuilt);

  PackageBuildInfo.fromJson(Map data) {
    if (data.containsKey("name")) {
      name = data["name"];
    }

    if (data.containsKey("version")) {
      version = data["version"];
    }

    if (data.containsKey("datetime")) {
      datetime = data["datetime"];
    }

    if (data.containsKey("isBuilt")) {
      // TODO(adam): if we decoded from json, this might not be needed... should be a type by then.
      isBuilt = data['isBuilt'].toString().toLower() == 'true' ? true : false;
    }
  }

  String toString() {
    Map data = new Map<String, String>();
    data["name"] = name;
    data["version"] = version;
    data["datetime"] = datetime;
    data["isBuilt"] = isBuilt;
    return JSON.encode(data);
  }
}