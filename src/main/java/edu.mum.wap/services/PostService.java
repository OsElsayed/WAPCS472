package edu.mum.wap.services;

import edu.mum.wap.models.Post;

import javax.servlet.http.Part;

public class PostService {
    public Post add(String description, Part photo) {
        Post post = new Post();
        post.setDescription(description);
        post.setPhoto(photo);
        return post;
    }
}
