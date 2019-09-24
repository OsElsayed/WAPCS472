package edu.mum.wap.daos;

import edu.mum.wap.models.User;

public interface UserRepository extends GenericRepository<User>{

    public User getUserByName(String username);
}
