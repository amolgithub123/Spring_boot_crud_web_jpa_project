package com.in.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.in.entity.Article;

public interface ArticleRepository  extends JpaRepository<Article, Long>{

  
}
