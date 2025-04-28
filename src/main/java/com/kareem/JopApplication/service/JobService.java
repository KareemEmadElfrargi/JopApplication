package com.kareem.JopApplication.service;

import com.kareem.JopApplication.model.JobPost;
import com.kareem.JopApplication.repository.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class JobService {
    @Autowired
    JobRepo jobRepo;

    public void addJob(JobPost jobPost){
        jobRepo.addJob(jobPost);

    }
    public List<JobPost> getAllJobs(){
        return jobRepo.getAllJobs();
    }
}
