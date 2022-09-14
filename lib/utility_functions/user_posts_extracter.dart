import 'package:instagram_clone/models/user_post_model.dart';

List userPostsExtracter(String postOwnerUsername, List mixedAuthorsPosts) {
  List userPosts = [];
  mixedAuthorsPosts.forEach((item) {
    if (item.authorUsername == postOwnerUsername) {
      userPosts.add(item);
    }
  });
  return userPosts;
}
