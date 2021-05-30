package ua.iot.tfk.controller;

import ua.iot.tfk.service.ServiceInterface;

import java.sql.SQLException;
import java.util.List;

public interface ControllerTemplate<T, ID> {

    List<T> getAll() throws SQLException;

    T get(ID id) throws SQLException;

    void delete(ID id) throws SQLException;

    void update(T entity) throws SQLException;

    void create(T entity) throws SQLException;

    ServiceInterface<T, ID> getService();
}
