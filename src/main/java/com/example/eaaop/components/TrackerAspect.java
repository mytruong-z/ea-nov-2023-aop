package com.example.eaaop.components;

import com.example.eaaop.model.ActivityLog;
import com.example.eaaop.repository.ActivityRepository;
import jakarta.servlet.http.HttpServletRequest;
import lombok.AllArgsConstructor;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import java.time.LocalDate;

@AllArgsConstructor
@Aspect
@Component
public class TrackerAspect {
    private final ActivityRepository activityRepository;
    private final HttpServletRequest request;


    @Around("@annotation(ExecutionTime)")
    public Object trackExecutionTime(ProceedingJoinPoint joinPoint) throws Throwable {
        long start = System.currentTimeMillis();
        Object proceed = joinPoint.proceed();
        long duration = System.currentTimeMillis() - start;

        ActivityLog newActivity = new ActivityLog();
        newActivity.setDate(LocalDate.now());
        newActivity.setOperation(joinPoint.getSignature().toShortString());
        newActivity.setDuration(duration);
        activityRepository.save(newActivity);

        return proceed;
    }

    @Before("execution(* com.example.eaaop.controller.*.*(..)) && @annotation(org.springframework.web.bind.annotation.PostMapping)")
    public void validateRequestHeader() {
        String header = request.getHeader("AOP-IS-AWESOME-HEADER");
        if (header == null || !header.equals("AOP-IS-AWESOME")) {
            throw new AopIsAwesomeHeaderException("AOP is awesome header is missing or invalid");
        }
    }
}
