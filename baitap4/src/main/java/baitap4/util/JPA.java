package baitap4.util;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JPA {
    private static final EntityManagerFactory entityManagerFactory =
            Persistence.createEntityManagerFactory("default");

    public static EntityManager getEntityManager() {
        return entityManagerFactory.createEntityManager();
    }
}


