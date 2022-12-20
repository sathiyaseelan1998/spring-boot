package com.example.myWebApp;

import org.springframework.data.repository.CrudRepository;

public interface EmployeeDao extends CrudRepository<EmployeeBo, Integer> {

}
