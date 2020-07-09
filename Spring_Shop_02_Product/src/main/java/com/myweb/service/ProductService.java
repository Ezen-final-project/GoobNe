package com.myweb.service;

import java.util.List;

import com.myweb.domain.ProductVO;

public interface ProductService {
	public int register(ProductVO pvo);
	public List<ProductVO> getList();
	public ProductVO getProduct(int pno);
	public int modify(ProductVO pvo);
	public int remove(int pno);
}
