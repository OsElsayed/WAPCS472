package edu.mum.wap.utils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EntityManagerHelper {

    private static final EntityManagerFactory emf;
    private static final ThreadLocal<EntityManager> THREAD_LOCAL;

    static{
        emf = Persistence.createEntityManagerFactory("socialnw");
        THREAD_LOCAL = new ThreadLocal<>();
    }

    public static EntityManager getCurrentEntityManager() {
        EntityManager em = THREAD_LOCAL.get();
        if (em == null || !em.isOpen()) {
            em = emf.createEntityManager();
            THREAD_LOCAL.set(em);
        }
        return em;
    }

    public static void closeEMF(){
        emf.close();
    }

}
