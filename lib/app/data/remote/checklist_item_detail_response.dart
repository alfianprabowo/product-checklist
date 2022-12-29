class ChecklistItem {
  int? statusCode;
  String? message;
  String? errorMessage;
  ChecklistItem? data;

  ChecklistItem({this.statusCode, this.message, this.errorMessage, this.data});

  ChecklistItem.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    message = json['message'];
    errorMessage = json['errorMessage'];
    data =
        json['data'] != null ? new ChecklistItem.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    data['errorMessage'] = this.errorMessage;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}
