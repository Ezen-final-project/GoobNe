package com.myweb.persistence;

import java.util.List;

import com.myweb.domain.ProductVO;

public interface ProductDAO {
	public int insertProduct(ProductVO pvo);
	public List<ProductVO> selectList();
	public ProductVO selectProduct(int pno);
	public int updateProduct(ProductVO pvo);
	public int deleteProduct(int pno);
}
