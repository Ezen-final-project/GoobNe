package com.myweb.ctrl;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myweb.domain.ProductVO;
import com.myweb.service.ProductService;

@Controller
@RequestMapping("/product/*")
public class ProductCtrl {
	private static Logger log = LoggerFactory.getLogger(ProductCtrl.class);

	@Inject
	ProductService psv;

	@GetMapping("/remove")
	public String remove(@RequestParam("pno") int pno, RedirectAttributes reAttr) {
		int isRm = psv.remove(pno);
		if (isRm > 0) {
			reAttr.addFlashAttribute("pSign", "삭제가 완료되었습니다");
		}
		return "redirect:/product/list";
	}

	@PostMapping("/modify")
	public String modify(ProductVO pvo) {
		int isUp = psv.modify(pvo);
		return "redirect:/product/detail?pSign=" + isUp + "&pno=" + pvo.getPno();
	}

	@GetMapping({ "/detail", "/modify" })
	public void detail(@RequestParam("pno") int pno, Model model,
			@RequestParam("pSign") int pSign,
			RedirectAttributes reAttr) {
		model.addAttribute("pvo", psv.getProduct(pno));
		if (pSign > 0) {
			reAttr.addFlashAttribute("pSign", "상품 수정이 완료되었습니다");
		}
	}

	@PostMapping("/write")
	public String write(ProductVO pvo, RedirectAttributes reAttr) {
		if (pvo.getImgfile() == null) {
			pvo.setImgfile("NONE");
		}
		int isIn = psv.register(pvo);
		if (isIn > 0) {
			reAttr.addFlashAttribute("pSign", "상품입력이 완료되었습니다");
		}
		return "redirect:/product/list";
	}

	@GetMapping("/write")
	public void write() {
	}

	@GetMapping("/list")
	public void list(Model model) {
		model.addAttribute("pList", psv.getList());
	}
}
