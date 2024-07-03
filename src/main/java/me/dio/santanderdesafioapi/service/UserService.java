package me.dio.santanderdesafioapi.service;

import me.dio.santanderdesafioapi.domain.model.User;

public interface UserService {
    User findById(Long id);

    User create(User userToCreate);

    void deleteById(Long id);
}
