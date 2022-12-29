import 'package:equatable/equatable.dart';

class ChecklistItem extends Equatable {
  final int? id;
  final String? name;
  final bool? itemCompletionStatus;

  const ChecklistItem({this.id, this.name, this.itemCompletionStatus});

  factory ChecklistItem.fromJson(Map<String, dynamic> json) => ChecklistItem(
        id: json['id'],
        name: json['name'],
        itemCompletionStatus: json['itemCompletionStatus'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['itemCompletionStatus'] = itemCompletionStatus;
    return data;
  }

  @override
  List<Object?> get props => [
        id,
        name,
        itemCompletionStatus,
      ];
}
