class AppUrls {
  AppUrls._();

  static const baseUrl = "http://52.59.233.217:9000";

  static const agreement = "$baseUrl/api/agreement.html";
  static const privacyPolicy = "$baseUrl/api/privacy-policy.html";
  static const telegramSupport = "https://t.me/asanovk";

  static const auth = "/auth/login";
  static const signUp = "/auth/signup";
  static const posts = "/posts";
  static const answeredPosts = "/posts/answered";
  static const answeredMyPosts = "/posts/my/answered";
  static const pendingMyPosts = "/posts/my/pending";
  static const answeredPostsForReciter = "/posts/reciter/answered";
  static const questionsForMe = "/posts/reciter/incoming";
  static  answerToQuestion(id) => "/posts/answer/$id";
  static const getUser = "/users";
  static const reciters = "/users/reciters";
}
