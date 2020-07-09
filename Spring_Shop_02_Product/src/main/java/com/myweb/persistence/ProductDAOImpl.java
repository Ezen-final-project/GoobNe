package com.myweb.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.myweb.domain.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO{
	private static Logger log = LoggerFactory.getLogger(ProductDAOImpl.class);
	private static String ns = "ProductMapper.";
	
	@Inject
	SqlSession sql;

	@Override
	public int insertProduct(ProductVO pvo) {
		return sql.insert(ns+"add", pvo);
	}

	@Override
	public List<ProductVO> selectList() {
		return sql.selectList(ns+"list");
	}

	@Override
	public ProductVO selectProduct(int pno) {
		return sql.selectOne(ns+"detail", pno);
	}

	@Override
	public int updateProduct(ProductVO pvo) {
		return sql.update(ns+"modify", pvo);
	}

	@Override
	public int deleteProduct(int pno) {
		return sql.delete(ns+"remove", pno);
	}
}
