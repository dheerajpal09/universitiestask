class DataModel {
  List<String>? webPages;
  String? name;
  List<String>? domains;
  String? country;
  String? stateProvince;
  String? alphaTwoCode;

  DataModel(
      {this.webPages,
      this.name,
      this.domains,
      this.country,
      this.stateProvince,
      this.alphaTwoCode});

  DataModel.fromJson(Map<String, dynamic> json) {
    webPages = json['web_pages'].cast<String>();
    name = json['name'];
    domains = json['domains'].cast<String>();
    country = json['country'];
    stateProvince = json['state-province'];
    alphaTwoCode = json['alpha_two_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['web_pages'] = this.webPages;
    data['name'] = this.name;
    data['domains'] = this.domains;
    data['country'] = this.country;
    data['state-province'] = this.stateProvince;
    data['alpha_two_code'] = this.alphaTwoCode;
    return data;
  }
}
