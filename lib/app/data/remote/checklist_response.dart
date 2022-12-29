import 'package:product_checklist/app/modules/checklist/models/checklist.dart';

class ChecklistResponse {
  int? statusCode;
  String? message;
  String? errorMessage;
  List<Checklist>? data;

  ChecklistResponse(
      {this.statusCode, this.message, this.errorMessage, this.data});

  ChecklistResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    message = json['message'];
    errorMessage = json['errorMessage'];
    if (json['data'] != null) {
      data = <Checklist>[];
      json['data'].forEach((v) {
        data!.add(Checklist.fromJson(v));
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
  Null? items;
  bool? checklistCompletionStatus;

  Data({this.id, this.name, this.items, this.checklistCompletionStatus});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    items = json['items'];
    checklistCompletionStatus = json['checklistCompletionStatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['items'] = this.items;
    data['checklistCompletionStatus'] = this.checklistCompletionStatus;
    return data;
  }
}
