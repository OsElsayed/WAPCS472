package edu.mum.wap.services;

import edu.mum.wap.daos.impl.PostDao;
import edu.mum.wap.models.Post;

import java.util.List;

public class PostService {

    // create service instance
    private PostDao postDao = new PostDao();

    public void addPost(Post post) {
        postDao.save(post);
    }

    public Post updatePost(Post post) {
        return postDao.update(post);
    }

    public void deletePost(Long postId) {
        postDao.delete(postId);
    }

    public List<Post> findAll() {
        return postDao.findAll();
    }

    public Post findPost(Long postId) {
        return postDao.findOne(postId);
    }
}
