package src.com.ssafy.model.service;

import java.util.List;

import src.com.ssafy.model.domain.Food;
import src.com.ssafy.model.domain.FoodPageBean;


public interface FoodService {
	
	public List<Food> searchAll(FoodPageBean bean);
	public Food search(int code);
}
