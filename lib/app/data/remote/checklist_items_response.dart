class ChecklistItems {
  int? statusCode;
  String? message;
  String? errorMessage;
  List<Data>? data;

  ChecklistItems({this.statusCode, this.message, this.errorMessage, this.data});

  ChecklistItems.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    message = json['message'];
    errorMessage = json['errorMessage'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    data['errorMessage'] = this.errorMessage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  bool? itemCompletionStatus;

  Data({this.id, this.name, this.itemCompletionStatus});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    itemCompletionStatus = json['itemCompletionStatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['itemCompletionStatus'] = this.itemCompletionStatus;
    return data;
  }
}
