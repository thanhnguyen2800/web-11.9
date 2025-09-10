package baitap4.repository;

import baitap4.model.User;
import baitap4.util.JPA;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;

public class UserRepo {
    public User findById(Long id) {
        EntityManager em = JPA.getEntityManager();
        try {
            return em.find(User.class, id);
        } finally {
            em.close();
        }
    }

    public User save(User user) {
        EntityManager em = JPA.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        try {
            tx.begin();
            if (user.getId() == null) {
                em.persist(user);
            } else {
                user = em.merge(user);
            }
            tx.commit();
            return user;
        } catch (RuntimeException ex) {
            if (tx.isActive()) tx.rollback();
            throw ex;
        } finally {
            em.close();
        }
    }
}


