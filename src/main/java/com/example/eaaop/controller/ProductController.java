package com.example.eaaop.controller;

import com.example.eaaop.components.ExecutionTime;
import com.example.eaaop.model.Product;
import com.example.eaaop.service.ProductService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@AllArgsConstructor
@RequestMapping("/api/products")
public class ProductController {
    private final ProductService productService;

    @GetMapping
    @ExecutionTime
    public List<Product> getAll() {
        return productService.getAll();
    }

    @PostMapping
    @ExecutionTime
    public Product create(@RequestBody Product product) {
        return productService.create(product);
    }
}
