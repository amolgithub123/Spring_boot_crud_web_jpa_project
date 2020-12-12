package com.in.service;

import java.util.List;

import com.in.entity.Article;

public interface ArticleService {
	
	public List<Article> getAllArticle();
	public Article getArticleById(long id);
	public void saveOrUpdate(Article article);
	public void deleteArticle(long id);

}
