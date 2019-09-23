package edu.mum.wap.daos.impl;

import edu.mum.wap.daos.AdRepository;
import edu.mum.wap.models.Advertisement;

public class AdvDao extends GenericDao<Advertisement> implements AdRepository {
    public AdvDao() {
        super.setDaoClass(Advertisement.class);
    }
}
