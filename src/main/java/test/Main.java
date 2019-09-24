package test;

import edu.mum.wap.models.Post;
import edu.mum.wap.services.PostService;

import java.util.List;

public class Main {

    public static void main(String[] args) {
//        UserService userService = new UserService();
//        User user = new User();
//        user.setUsername("ossama");
//        try {
//            userService.addUser(user);
//        } catch (NoSuchAlgorithmException e) {
//            e.printStackTrace();
//        }
//        Post post  = new Post();
//        post.setDescription("desssssssssssc");
//        post.setUserId(1);
//        PostService postService = new PostService();
//        postService.addPost(post);

        PostService psv = new PostService();
        List<Post> p =psv.getMyPosts(2);
        System.out.print(p);
    }
}
