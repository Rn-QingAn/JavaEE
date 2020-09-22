package com.rng.controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileUploadException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.rng.entity.Fruit;
import com.rng.entity.Order;
import com.rng.service.FruitService;
import com.rng.service.OrderService;
import com.rng.util.getDate;

/**
 * 用来展示所有请求控制器
 */
@Controller
public class FruitController {

	@Autowired
	FruitService fruitService;

	@Autowired
	OrderService orderService;

	// @RequestMapping("/showList")
	// public String toProduct-List(){
	// return "Product-List";
	// }
	/**
	 * 通过水果名称将水果加入购物车
	 * 
	 * @param fName
	 * @param session
	 * @return
	 */
	@RequestMapping("addShoppingCart")
	public String addShoppingCart(String fName, String fImage, String introduction, String fPrice,HttpSession session) {
		String userName = (String) session.getAttribute("name");
		System.out.println("水果名称:" + fName);
		System.out.println("水果图片:" + fImage);
		System.out.println("用户:" + userName);
		System.out.println("水果简介:" + introduction);
		System.out.println("水果价格:" + fPrice);
		System.out.println("请求到了加入购物车");
		if (userName != null) {
			getDate date = new getDate();
			String oImage = fImage;
			String oName = fName;
			String oPrice = fPrice;
			Order order = new Order(date.getDate(), userName, oImage, oName, introduction, oPrice);
			orderService.createOrder(order);
			System.out.println("======================>>>>>>>>>>>>>>>>>>>>>正在加入购物车");
			System.out.println("======================>>>>>>>>>>>>>>>>>>>>>" + userName);
			return "redirect:/showList";
		}
		return "login";
	}

	/**
	 * 购物车展示水果列表
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "showList")
	public String showAll(HttpServletRequest request) {
		System.out.println("查询请求到Controller这里");
		List<Fruit> fruits = this.fruitService.getAllFruits();
		System.out.println("查询结果到了:" + fruits.size());
		request.setAttribute("FRUITS", fruits);
		System.out.println("======================>>>>>>>>>>>>>>>>>>>>>正在前往货架");
		return "Product-List";
	}

	/**
	 * 展示水果列表
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("showFruitList")
	public String showAllFruit(HttpServletRequest request) {
		System.out.println("查询请求到Controller这里");
		List<Fruit> fruits = this.fruitService.getAllFruits();
		System.out.println("查询结果到了:" + fruits.size());
		request.setAttribute("FRUITS", fruits);
		System.out.println("======================>>>>>>>>>>>>>>>>>>>>>商品管理");
		return "userGoodsManage";
	}

	/**
	 * 删除水果
	 * 
	 * @param request
	 * @param fName
	 * @return
	 */
	@RequestMapping("deleteFruit")
	public String delete(HttpServletRequest request, @RequestParam("fId") Integer fId) {
		System.out.println("删除请求到Controller这里");
		fruitService.deletefName(fId);
		System.out.println("======================>>>>>>>>>>>>>>>>>>>>>正在移除商品");
		return this.showAllFruit(request);
	}

	/**
	 * 修改信息前先进行查找
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("ByNameGetFruit")
	public String ByNameGetFruit(String fName, HttpSession session) {
		System.out.println("您对水果进行了更新！！！");
		List<Fruit> fruits = fruitService.ByNameGetFruits(fName);
		session.setAttribute("FRUITS", fruits);
		System.out.println("======================>>>>>>>>>>>>>>>>>>>>>正在更新信息");
		return "updateFruit";
	}

	/**
	 * 修改信息
	 */
	@RequestMapping("updateFruit")
	public String updateFruit(Fruit fruit, HttpSession session) {
		if (fruitService.updateFruit(fruit)) {
			System.out.println("======================>>>>>>>>>>>>>>>>>>>>>更新成功");
			return "redirect:/showFruitList";

		}
		System.out.println("======================>>>>>>>>>>>>>>>>>>>>>更新失败");
		return "updateFruit";
	}

	/**
	 * 通过产地模糊查询
	 * 
	 * @param fPlace
	 * @param session
	 * @return
	 */
	@RequestMapping("selectFruit")
	public String selectAllFruit(String fPlace, HttpSession session) {
		List<Fruit> fruits = fruitService.selectAllFruit(fPlace);
		session.setAttribute("FRUITS", fruits);
		System.out.println("======================>>>>>>>>>>>>>>>>>>>>>进行产地模糊查询");
		return "userGoodsManage";
	}

	/**
	 * 在所有水果页 ，通过产地模糊查询
	 * 
	 * @param fPlace
	 * @param session
	 * @return
	 */
	@RequestMapping("ByFruitName")
	public String selectFruit(String fName, HttpSession session) {
		List<Fruit> fruits = fruitService.selectByName(fName);
		System.out.println("正在通过姓名模糊查询=============>>>>>>>>>>>" + fName);
		session.setAttribute("FRUITS", fruits);
		return "Product-List";
	}

	/**
	 * 上传图片并回显
	 * 
	 * @param redirectAttributes
	 * @param fName
	 *            名称
	 * @param fType
	 *            类型
	 * @param fPlace
	 *            产地
	 * @param introduction
	 *            水果简介
	 * @param fPrice
	 *            价格
	 * @param fNumber
	 *            上架数量
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 * @throws FileUploadException
	 */
	@RequestMapping("/upload")
	public String upload(RedirectAttributes redirectAttributes, @RequestParam("fName") String fName,
			@RequestParam("fType") String fType, @RequestParam("fPlace") String fPlace,
			@RequestParam("introduction") String introduction, @RequestParam("fPrice") String fPrice,
			@RequestParam("fNumber") String fNumber, HttpServletRequest request, HttpServletResponse response)
			throws IOException, FileUploadException {
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());
		String image = null;
		if (multipartResolver.isMultipart(request)) {
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
			Iterator<String> iter = multiRequest.getFileNames();
			String myFileName = null;
			String myFiledName = null;
			while (iter.hasNext()) {
				List<MultipartFile> file = multiRequest.getFiles(iter.next());
				if (file != null) {
					for (MultipartFile files : file) {
						myFileName = files.getOriginalFilename();
						myFiledName = files.getName();
						if (myFileName.toString().trim() != "") {
							String path = request.getSession().getServletContext().getRealPath("photo");
							String fileName = null;
							long getminsecond = System.currentTimeMillis();
							fileName = getminsecond + "_" + myFileName;
							if (myFiledName.equals("fImage")) {
								image = fileName;
							}
							File targetFile = new File(path, fileName);
							System.out.println(fileName + "     " + path);
							files.transferTo(targetFile);
						}
					}
				}
			}
		}
		Fruit fruit = new Fruit(image, fName, fType, fPlace, introduction, fPrice, fNumber);
		fruitService.addFruits(fruit);
		System.out.println("======================>>>>>>>>>>>>>>>>>>>>>水果添加成功");
		return "redirect:/showFruitList";
	}
}
