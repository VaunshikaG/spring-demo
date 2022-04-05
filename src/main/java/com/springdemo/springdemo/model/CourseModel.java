package com.springdemo.springdemo.model;

import com.springdemo.springdemo.entities.CourseEntity;

import java.util.List;

public interface CourseModel {
    public List<CourseEntity> getCourses();

    public CourseEntity getCourse(long courseId);

    public CourseEntity addCourse(CourseEntity courseEntity);

    public CourseEntity updateCourse(CourseEntity courseEntity);

    public void deleteCourse(long parseLong);
}
