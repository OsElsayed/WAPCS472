package edu.mum.wap.daos.impl;

import edu.mum.wap.daos.PostRepository;
import edu.mum.wap.models.Post;

public class PostDao extends GenericDao<Post> implements PostRepository {
    public PostDao() {
        super.setDaoClass(Post.class);
    }
}
