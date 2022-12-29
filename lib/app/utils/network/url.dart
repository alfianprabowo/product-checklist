class Url {
  // Base URLs
  static const String baseUrl = '94.74.86.174:8080/api';

  // Auth

  static const String login = '/login';

  static const String register = '/register';

  // Checklist

  static const String allChecklist = '/checklist';

  static const String createChecklist = '/checklist';

  static String deleteChecklist(int checklistId) => '/checklist/$checklistId';

  static String allChecklistItem(int checklistId) =>
      '/checklist/$checklistId/item';

  static String createChecklistItem(int checklistId) =>
      '/checklist/$checklistId/item';

  static String getChecklistItemInChecklist(
          int checklistId, int checklistItemId) =>
      '/checklist/$checklistId/item/$checklistItemId';

  static String updateStatusChecklistItem(
          int checklistId, int checklistItemId) =>
      '/checklist/$checklistId/item/$checklistItemId';

  static String deleteItemChecklistItem(int checklistId, int checklistItemId) =>
      '/checklist/$checklistId/item/$checklistItemId';

  static String renameItemChecklistItem(int checklistId, int checklistItemId) =>
      '/checklist/$checklistId/item/$checklistItemId';
}
