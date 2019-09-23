package edu.mum.wap.services;

import edu.mum.wap.daos.impl.ImageDao;
import edu.mum.wap.models.Images;

import java.util.List;

public class ImageService {

    private ImageDao imageDao = new ImageDao();

    public void addImage(Images image) {
        imageDao.save(image);
    }

    public Images updateImage(Images image) {
        return imageDao.update(image);
    }

    public void deleteImage(Long imageId) {
        imageDao.delete(imageId);
    }

    public List<Images> findAll() {
        return imageDao.findAll();
    }

    public Images findImage(Long imageId) {
        return imageDao.findOne(imageId);
    }
}
