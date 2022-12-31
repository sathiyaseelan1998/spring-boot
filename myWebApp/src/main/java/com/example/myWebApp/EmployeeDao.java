package com.example.myWebApp;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface EmployeeDao extends CrudRepository<EmployeeBo, Integer> {

}
