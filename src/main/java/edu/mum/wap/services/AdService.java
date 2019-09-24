package edu.mum.wap.services;

import edu.mum.wap.daos.impl.AdvDao;
import edu.mum.wap.models.Advertisement;
import edu.mum.wap.models.User;

import java.util.List;

public class AdService {

    private AdvDao advDao = new AdvDao();

    public void addAdvertisement(Advertisement adv) {
        advDao.save(adv);
    }

    public Advertisement updateAdvertisement(Advertisement adv) {
        return advDao.update(adv);
    }

    public void deleteAdvertisement(Long advId) {
        advDao.delete(advId);
    }

    public List<Advertisement> findAll() {
        return advDao.findAll();
    }

    public Advertisement findAdvertisement(Long advId) {
        return advDao.findOne(advId);
    }
}
