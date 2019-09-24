package test;

import edu.mum.wap.models.Post;
import edu.mum.wap.models.User;
import edu.mum.wap.services.PostService;
import edu.mum.wap.services.UserService;

import java.security.NoSuchAlgorithmException;

public class Main {

    public static void main(String[] args) {
        UserService userService = new UserService();
        User user = new User();
        user.setUsername("ossama");
        try {
            userService.addUser(user);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        Post post  = new Post();
        post.setDescription("desssssssssssc");
        post.setUserId(user.getId());
        PostService postService = new PostService();
        postService.addPost(post);
    }
}
