package com.fokefoke.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fokefoke.dto.DetailDTO;
import com.fokefoke.dto.NutritionalDTO;
import com.fokefoke.dto.ProductDTO;
import com.fokefoke.service.DetailService;

import lombok.Data;


@Controller
@Data
@RequestMapping("/detail/*")
public class DetailController {
	private static final Logger logger = LoggerFactory.getLogger(DetailController.class);

	@Autowired
	DetailService service;
	
//	String[] preTopping= null;
	
	public DetailController() {
		System.out.println("@Controller 스프링 자동생성");

	}

	@RequestMapping(value = "/view", method = {RequestMethod.GET} )
	public ModelAndView view( ProductDTO product) {
		List<ProductDTO> sides = service.getSide();
		List<ProductDTO> beverages = service.getBeverage();
		product = service.getProduct(product);
		NutritionalDTO nutritional = service.getNutritional(product);
		DetailDTO auto = service.getAuto(product);
		System.out.println("?????????" + nutritional);
		ModelAndView mav = new ModelAndView();
		mav.addObject("sides", sides);
		mav.addObject("beverages", beverages);
		mav.addObject("product", product);
		mav.addObject("nutritional", nutritional);
		mav.addObject("auto", auto);
		mav.setViewName("detail/shop-details");
		return mav;
	}
	@RequestMapping(value = "/view", method = RequestMethod.POST )
	public String view11( DetailDTO dto, ProductDTO pro, @RequestParam(required = false) List<String> toppingchk, 
			@RequestParam(required = false) List<String> sourcechk, @RequestParam(required = false) List<String> extrachk) {
		if (toppingchk != null) {
			for(int i=0;i<toppingchk.size();i++) {
				if(i==0) {
					dto.setAtopping(toppingchk.get(i));
				}else if(i==1) {
					dto.setBtopping(toppingchk.get(i));
				}else if(i==2) {
					dto.setCtopping(toppingchk.get(i));
				}else if(i==3) {
					dto.setDtopping(toppingchk.get(i));
				}
			}
		}
		if (sourcechk != null) {
			for(int i=0;i<sourcechk.size();i++) {
				if(i==0) {
					dto.setAsource(sourcechk.get(i));
				}else if(i==1) {
					dto.setBsource(sourcechk.get(i));
				}
			}
		}
		if(extrachk!=null) {
			for(int i=0;i<extrachk.size();i++) {
				if(i==0) {
					dto.setAextratopping(extrachk.get(i));
				}else if(i==1) {
					dto.setBextratopping(extrachk.get(i));
				}
			}
		}
		System.out.println("post---------------" + dto);
		int rs = service.insertDetail(dto);
		return "detail/shop-details";
	}

	@RequestMapping(value = "/select", method = RequestMethod.POST)
	public ModelAndView select(String automenu, DetailDTO dto, ProductDTO product, @RequestParam(required = false) List<String> toppingchk, 
			@RequestParam(required = false) List<String> sourcechk, @RequestParam(required = false) List<String> extrachk) {
		product = service.getProduct(product);
		int currentPrice = Integer.parseInt(product.getProductPrice());
		dto.setPrice(currentPrice);
		dto.setTotal(1);
		if (toppingchk != null) {
			for(int i=0;i<toppingchk.size();i++) {
				if(i==0) {
					dto.setAtopping(toppingchk.get(i));
				}else if(i==1) {
					dto.setBtopping(toppingchk.get(i));
				}else if(i==2) {
					dto.setCtopping(toppingchk.get(i));
				}else if(i==3) {
					dto.setDtopping(toppingchk.get(i));
				}
			}
		}
		if (sourcechk != null) {
			for(int i=0;i<sourcechk.size();i++) {
				if(i==0) {
					dto.setAsource(sourcechk.get(i));
				}else if(i==1) {
					dto.setBsource(sourcechk.get(i));
				}
			}
		}
		if(extrachk!=null) {
			for(int i=0;i<extrachk.size();i++) {
				if(i==0) {
					dto.setAextratopping(extrachk.get(i));
					if(extrachk.get(i).equals("낫또") || extrachk.get(i).equals("크랩샐러드") || extrachk.get(i).equals("아보카도") || extrachk.get(i).equals("피코데가요")){
						currentPrice +=2000;
						dto.setPrice(currentPrice);
					}else {
						currentPrice +=1500;
						dto.setPrice(currentPrice);
					}
				}else if(i==1) {
					dto.setBextratopping(extrachk.get(i));
					if(extrachk.get(i).equals("낫또") || extrachk.get(i).equals("크랩샐러드") || extrachk.get(i).equals("아보카도") || extrachk.get(i).equals("피코데가요")){
						currentPrice +=2000;
						dto.setPrice(currentPrice);
					}else {
						currentPrice +=1500;
						dto.setPrice(currentPrice);
					}
				}
			}
		}
		if(dto.getExtramain()!=null) {
			currentPrice +=3000;
			dto.setPrice(currentPrice);
		}
		System.out.println(automenu+"********************");
		List<ProductDTO> sides = service.getSide();
		List<ProductDTO> beverages = service.getBeverage();
		ModelAndView mav = new ModelAndView();
		mav.addObject("sides", sides);
		mav.addObject("beverages", beverages);
		mav.addObject("product", product);
		mav.addObject("dto", dto);
		mav.setViewName("detail/shop-select");
		return mav;
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public DetailDTO update(DetailDTO dto, ProductDTO product, @RequestParam List<String> toppingchk, 
			@RequestParam List<String> sourcechk, @RequestParam(required = false) List<String> extrachk) {
		product = service.getProduct(product);
		int currentPrice = Integer.parseInt(product.getProductPrice());
		dto.setTotal(1);
		dto.setPrice(currentPrice);
		for(int i=0;i<sourcechk.size();i++) {
			if(i==0) {
				dto.setAsource(sourcechk.get(i));
			}else if(i==1) {
				dto.setBsource(sourcechk.get(i));
			}
		}
		if(extrachk!=null) {
			for(int i=0;i<extrachk.size();i++) {
				if(i==0) {
					dto.setAextratopping(extrachk.get(i));
					if(extrachk.get(i).equals("낫또") || extrachk.get(i).equals("크랩샐러드") || extrachk.get(i).equals("아보카도") || extrachk.get(i).equals("피코데가요")){
						currentPrice +=2000;
						dto.setPrice(currentPrice);
					}else {
						currentPrice +=1500;
						dto.setPrice(currentPrice);
					}
				}else if(i==1) {
					dto.setBextratopping(extrachk.get(i));
					if(extrachk.get(i).equals("낫또") || extrachk.get(i).equals("크랩샐러드") || extrachk.get(i).equals("아보카도") || extrachk.get(i).equals("피코데가요")){
						currentPrice +=2000;
						dto.setPrice(currentPrice);
					}else {
						currentPrice +=1500;
						dto.setPrice(currentPrice);
					}
				}
			}
		}
		if(dto.getExtramain()!=null) {
			currentPrice +=3000;
			dto.setPrice(currentPrice);
		}
		if(dto.getSetside()!=null) {
			currentPrice +=2500;
			dto.setPrice(currentPrice);
		}
		return dto;
	}
	
	@RequestMapping(value = "/toppingChk", method = RequestMethod.POST)
	@ResponseBody
	public DetailDTO toppingChk(DetailDTO dto, ProductDTO product, @RequestParam List<String> toppingchk, 
			@RequestParam List<String> sourcechk, @RequestParam(required = false) List<String> extrachk) {
		product = service.getProduct(product);
		int currentPrice = Integer.parseInt(product.getProductPrice());
		dto.setTotal(1);
		dto.setPrice(currentPrice);
			for(int i=0;i<toppingchk.size();i++) {
				if(i==0) {
					dto.setAtopping(toppingchk.get(i));
				}else if(i==1) {
					dto.setBtopping(toppingchk.get(i));
				}else if(i==2) {
					dto.setCtopping(toppingchk.get(i));
				}else if(i==3) {
					dto.setDtopping(toppingchk.get(i));
				}
			}
			for(int i=0;i<sourcechk.size();i++) {
				if(i==0) {
					dto.setAsource(sourcechk.get(i));
				}else if(i==1) {
					dto.setBsource(sourcechk.get(i));
				}
			}
			if(extrachk!=null) {
				for(int i=0;i<extrachk.size();i++) {
					if(i==0) {
						dto.setAextratopping(extrachk.get(i));
						if(extrachk.get(i).equals("낫또") || extrachk.get(i).equals("크랩샐러드") || extrachk.get(i).equals("아보카도") || extrachk.get(i).equals("피코데가요")){
							currentPrice +=2000;
							dto.setPrice(currentPrice);
						}else {
							currentPrice +=1500;
							dto.setPrice(currentPrice);
						}
					}else if(i==1) {
						dto.setBextratopping(extrachk.get(i));
						if(extrachk.get(i).equals("낫또") || extrachk.get(i).equals("크랩샐러드") || extrachk.get(i).equals("아보카도") || extrachk.get(i).equals("피코데가요")){
							currentPrice +=2000;
							dto.setPrice(currentPrice);
						}else {
							currentPrice +=1500;
							dto.setPrice(currentPrice);
						}
					}
				}
			}
			if(dto.getExtramain()!=null) {
				currentPrice +=3000;
				dto.setPrice(currentPrice);
			}
			if(dto.getSetside()!=null) {
				currentPrice +=2500;
				dto.setPrice(currentPrice);
			}
		System.out.println("이거이거>>>"+dto);
		return dto;
	}
	
	@RequestMapping(value = "/sourceChk", method = RequestMethod.POST)
	@ResponseBody
	public DetailDTO sourceChk(DetailDTO dto, ProductDTO product, @RequestParam List<String> toppingchk, 
			@RequestParam List<String> sourcechk, @RequestParam(required = false) List<String> extrachk) {
		product = service.getProduct(product);
		int currentPrice = Integer.parseInt(product.getProductPrice());
		dto.setTotal(1);
		dto.setPrice(currentPrice);
		for(int i=0;i<toppingchk.size();i++) {
			if(i==0) {
				dto.setAtopping(toppingchk.get(i));
			}else if(i==1) {
				dto.setBtopping(toppingchk.get(i));
			}else if(i==2) {
				dto.setCtopping(toppingchk.get(i));
			}else if(i==3) {
				dto.setDtopping(toppingchk.get(i));
			}
		}
		for(int i=0;i<sourcechk.size();i++) {
			if(i==0) {
				dto.setAsource(sourcechk.get(i));
			}else if(i==1) {
				dto.setBsource(sourcechk.get(i));
			}
		}
		if(extrachk!=null) {
			for(int i=0;i<extrachk.size();i++) {
				if(i==0) {
					dto.setAextratopping(extrachk.get(i));
					if(extrachk.get(i).equals("낫또") || extrachk.get(i).equals("크랩샐러드") || extrachk.get(i).equals("아보카도") || extrachk.get(i).equals("피코데가요")){
						currentPrice +=2000;
						dto.setPrice(currentPrice);
					}else {
						currentPrice +=1500;
						dto.setPrice(currentPrice);
					}
				}else if(i==1) {
					dto.setBextratopping(extrachk.get(i));
					if(extrachk.get(i).equals("낫또") || extrachk.get(i).equals("크랩샐러드") || extrachk.get(i).equals("아보카도") || extrachk.get(i).equals("피코데가요")){
						currentPrice +=2000;
						dto.setPrice(currentPrice);
					}else {
						currentPrice +=1500;
						dto.setPrice(currentPrice);
					}
				}
			}
		}
		if(dto.getExtramain()!=null) {
			currentPrice +=3000;
			dto.setPrice(currentPrice);
		}
		if(dto.getSetside()!=null) {
			currentPrice +=2500;
			dto.setPrice(currentPrice);
		}
		System.out.println("이거이거>>>"+dto);
		return dto;
	}
	
}
