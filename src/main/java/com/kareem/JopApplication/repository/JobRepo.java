package com.kareem.JopApplication.repository;

import com.kareem.JopApplication.model.JobPost;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@Repository
public class JobRepo {

    private final List<JobPost> jobPostList = new ArrayList<>(Arrays.asList(
            new JobPost(
                    1,
                    "Java Developer",
                    "We are looking for a passionate Java Developer to design and develop high-volume applications.",
                    2,
                    Arrays.asList("Java", "Spring Boot", "Hibernate", "MySQL")
            ),
            new JobPost(
                    2,
                    "Frontend Developer",
                    "Join our team to build modern and interactive user interfaces.",
                    1,
                    Arrays.asList("HTML", "CSS", "JavaScript", "React")
            ),
            new JobPost(
                    3,
                    "Data Scientist",
                    "Analyze large amounts of raw information to find patterns and use them to optimize business operations.",
                    3,
                    Arrays.asList("Python", "TensorFlow", "Pandas", "Machine Learning")
            ),
            new JobPost(
                    4,
                    "DevOps Engineer",
                    "Implement integrations requested by customers and deploy updates automatically without downtime.",
                    4,
                    Arrays.asList("Docker", "Kubernetes", "AWS", "Linux")
            ),
            new JobPost(
                    5,
                    "Mobile App Developer",
                    "Develop high-quality mobile applications for Android and iOS platforms.",
                    2,
                    Arrays.asList("Flutter", "Dart", "Firebase")
            )
    ));

    public void addJob(JobPost jobPost) {
        jobPostList.add(jobPost);
    }

    public List<JobPost> getAllJobs() {
        System.out.println(jobPostList);

        return Collections.unmodifiableList(jobPostList);
    }
}
