package edu.mum.wap.daos;

import edu.mum.wap.models.Post;

import java.util.List;

public interface PostRepository extends GenericRepository<Post>{
    List<Post> getMyPosts(long userId);
}
