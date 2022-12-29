import 'package:equatable/equatable.dart';
import 'package:product_checklist/app/data/remote/checklist_item_detail_response.dart';

class Checklist extends Equatable {
  final int? id;
  final String? name;
  final List<ChecklistItem>? items;
  final bool? checklistCompletionStatus;

  const Checklist(
      {this.id, this.name, this.items, this.checklistCompletionStatus});

  factory Checklist.fromJson(Map<String, dynamic> json) => Checklist(
        id: json['id'],
        name: json['name'],
        items: json['items'] != null
            ? List<ChecklistItem>.from(json['items'].map(
                (dynamic x) => ChecklistItem.fromJson(x),
              ))
            : null,
        checklistCompletionStatus: json['checkListCompletionStatus'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['errorMessage'] = checklistCompletionStatus;
    if (items != null) {
      data['data'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  List<Object?> get props => [
        id,
        name,
        items,
        checklistCompletionStatus,
      ];
}
