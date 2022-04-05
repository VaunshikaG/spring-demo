//  repository

package com.springdemo.springdemo.repository;

import com.springdemo.springdemo.entities.CourseEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CourseRepository extends JpaRepository<CourseEntity, Long> {
}
