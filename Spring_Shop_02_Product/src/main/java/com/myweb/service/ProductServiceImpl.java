package com.myweb.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.myweb.domain.ProductVO;
import com.myweb.persistence.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService{
	private static Logger log = LoggerFactory.getLogger(ProductServiceImpl.class);

	@Inject
	ProductDAO pdao;
	
	@Override
	public int register(ProductVO pvo) {
		return pdao.insertProduct(pvo);
	}

	@Override
	public List<ProductVO> getList() {
		return pdao.selectList();
	}

	@Override
	public ProductVO getProduct(int pno) {
		return pdao.selectProduct(pno);
	}

	@Override
	public int modify(ProductVO pvo) {
		return pdao.updateProduct(pvo);
	}

	@Override
	public int remove(int pno) {
		return pdao.deleteProduct(pno);
	}
}
