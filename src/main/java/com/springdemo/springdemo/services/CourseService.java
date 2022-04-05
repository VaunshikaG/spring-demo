//  methods to be implemented

package com.springdemo.springdemo.services;

import com.springdemo.springdemo.repository.CourseRepository;
import com.springdemo.springdemo.entities.CourseEntity;
import com.springdemo.springdemo.model.CourseModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService implements CourseModel {
//    List<Course> list;

    @Autowired
    private CourseRepository courseRepository;


    public CourseService() {
//        list = new ArrayList<>();
//        list.add(new Course(123,"Spring Course", "this is spring course"));
//        list.add(new Course(456,"Flutter Course", "this is flutter course"));
    }
    @Override
    public List<CourseEntity> getCourses() {
//        return list;

        return courseRepository.findAll();
    }

    @Override
    public CourseEntity getCourse(long courseId) {
//        Course c = null;
//        for (Course course:list)
//        {
//            if (course.getId()==courseId)
//            {
//                c = course;
//                break;
//            }
//        }
//        return c;

        return courseRepository.getOne(courseId);
    }

    @Override
    public CourseEntity addCourse(CourseEntity courseEntity) {
//        list.add(course);
//        return course;


        courseRepository.save(courseEntity);
        return courseEntity;
    }

    @Override
    public CourseEntity updateCourse(CourseEntity courseEntity) {
//        list.forEach(e -> {
//            if (e.getId() == course.getId()) {
//                e.setTitle(course.getTitle());
//                e.setDescription(course.getDescription());
//            }
//        });
//        return course;

        courseRepository.save(courseEntity);
        return courseEntity;
    }

    @Override
    public void deleteCourse(long parseLong) {
//        list = this.list.stream().filter(e -> e.getId() != parseLong).collect(Collectors.toList());

        CourseEntity entity = courseRepository.getById(parseLong);
        courseRepository.delete(entity);
    }
}
