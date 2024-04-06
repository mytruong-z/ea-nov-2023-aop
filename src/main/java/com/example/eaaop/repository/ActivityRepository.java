package com.example.eaaop.repository;

import com.example.eaaop.model.ActivityLog;
import org.springframework.data.repository.ListCrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ActivityRepository extends ListCrudRepository<ActivityLog, Long> {}