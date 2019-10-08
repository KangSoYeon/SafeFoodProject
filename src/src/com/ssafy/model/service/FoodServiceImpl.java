package src.com.ssafy.model.service;

import java.util.List;

import src.com.ssafy.model.dao.FoodDAO;
import src.com.ssafy.model.dao.FoodDAOImpl;
import src.com.ssafy.model.domain.Food;
import src.com.ssafy.model.domain.FoodPageBean;


public class FoodServiceImpl implements FoodService{
	private FoodDAO dao;
	private String[] allergys={"대두","땅콩","우유","게","새우","참치","연어","쑥","소고기","닭고기","돼지고기","복숭아","민들레","계란흰자"};

	public FoodServiceImpl() {
		 dao =new FoodDAOImpl();
	}
	public List<Food> searchAll(FoodPageBean bean) {
		return dao.searchAll(bean);
	}
	public Food search(int code) {
	//  code에  맞는 식품 정보를 검색하고, 검색된 식품의 원재료에 알레르기 성분이 있는지 확인하여 Food 정보에 입력한다.
		Food food = dao.search(code);
		String check = food.getMaterial();
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < allergys.length; i++) {
			if(check.contains(allergys[i])) sb.append(allergys[i]).append(" ");
		}				
		food.setAllergy(sb.toString());
		return food;
	}
	
}
