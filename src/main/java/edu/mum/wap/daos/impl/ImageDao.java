package edu.mum.wap.daos.impl;

import edu.mum.wap.daos.ImageRepository;
import edu.mum.wap.models.Images;

public class ImageDao extends GenericDao<Images> implements ImageRepository {
    public ImageDao() {
        super.setDaoClass(Images.class);
    }
}