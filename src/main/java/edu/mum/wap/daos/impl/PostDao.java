package edu.mum.wap.daos.impl;

import edu.mum.wap.daos.PostRepository;
import edu.mum.wap.models.Post;

import java.util.List;

public class PostDao extends GenericDao<Post> implements PostRepository {
    public PostDao() {
        super.setDaoClass(Post.class);
    }

    @Override
    public List<Post> getMyPosts(long userId) {
        return entityManager
                .createQuery("from Post p where p.userId = " + userId)
                .getResultList();
    }
}
