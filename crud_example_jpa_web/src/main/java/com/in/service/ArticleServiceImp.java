
package com.in.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.in.entity.Article;
import com.in.repository.ArticleRepository;

@Service
@Transactional
public class ArticleServiceImp implements ArticleService {
	
	
	
      @Autowired
	 private ArticleRepository articleRepository;
	
	@Override
	public List<Article> getAllArticle() {		
		return articleRepository.findAll();
	}

	@Override
	public Article getArticleById(long id) {	
		return articleRepository.findById(id).get();
		
	}

	@Override
	public void saveOrUpdate(Article article) {
		articleRepository.save(article);
		
	}

	@Override
	public void deleteArticle(long id) {
		articleRepository.deleteById(id);
		
		
	}

}
