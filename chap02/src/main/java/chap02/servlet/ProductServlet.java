package chap02.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dataModel.Product;


@WebServlet("/product")
public class ProductServlet extends HttpServlet{

	
	private static Map<String, Product> products = new HashMap<>();
	
	static {
		products.put("fan", new Product("부채", 1000, 0.2, "리빙"));
		products.put("fan", new Product("선풍기", 33000, 5.3, "가전제품"));
		products.put("minifan", new Product("미니선풍기", 20000, 0.8, "아이디어 상품"));
		products.put("aircon", new Product("에어컨", 800000, 28.9, "가전제품"));
	}
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String productName = req.getParameter("name");
		System.out.println(products.get(productName));
		
		//파라미터로 받은 상품명을 통해 상품의 모든 정보들을 얻을 수 있다.
		
		//상품명을 통해 얻은 데이터를 애트리뷰트에 실어서 전달할 수 있다. req에 실어놓는 것이기 때문에 forward일 떄는 아무 문제 없음. 근데 redirect일 땐 안 됨
		req.setAttribute("product", products.get(productName));
		//product는 어트리뷰트 이름 걍 암거나 써도 됨 대신 꺼낼 때 ${이름}으로 꺼내야 하니까 이름에 똑같이 써줘야지
		
		//forward : webapp 밑의 프로젝트 경로 사용
		req.getRequestDispatcher("/attribute/view/product_detail.jsp")
		.forward(req, resp);
	}
	
	
}
