class ApiEndpoints {
  static const String baseUrl = "https://mikrolink-backend.vercel.app/api";

  // Auth
  static const String login = "$baseUrl/user/login";
  static const String register = "$baseUrl/user/register";
  static const String verifyOtp = "$baseUrl/user/verify";

  // Trips
  static const String trips = "$baseUrl/trips";
  static const String activeTrip = "$baseUrl/trips/active";

  // Chat
  static const String chat = "$baseUrl/chat";

  // Notifications
  static const String notifications = "$baseUrl/notifications";

  // Support
  static const String support = "$baseUrl/support";
}
