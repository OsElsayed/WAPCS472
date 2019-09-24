package test;

import edu.mum.wap.models.Post;
import edu.mum.wap.models.User;
import edu.mum.wap.services.PostService;
import edu.mum.wap.services.UserService;

public class Main {

    public static void main(String[] args) {
        UserService userService = new UserService();
        User user = new User();
        user.setUsername("ossama");
        userService.addUser(user);
        Post post  = new Post();
        post.setDescription("desssssssssssc");
        post.setUserId(user.getId());
        PostService postService = new PostService();
        postService.addPost(post);
    }
}
