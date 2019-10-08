package src.com.ssafy.controller;

import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import src.com.ssafy.model.domain.Food;
import src.com.ssafy.model.domain.FoodPageBean;
import src.com.ssafy.model.dto.Member;
import src.com.ssafy.model.service.FoodService;
import src.com.ssafy.model.service.FoodServiceImpl;
import src.com.ssafy.model.service.MemberService;
import src.com.ssafy.model.service.MemberServiceImp;

@WebServlet("/main.do")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberService memberService = new MemberServiceImp();
	private FoodService foodService = new FoodServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url = "index.jsp";

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		System.out.println("action:" + action);
		try {
			if (action != null) {
				if (action.endsWith("memberRegistForm.do")) {
					url = "/member/memberRegister.html";
				} else if (action.endsWith("memberRegit.do")) {
					url = memberRegit(request, response);
				} else if (action.endsWith("memberSearch.do")) {
					url = memberSearch(request, response);
				} else if (action.endsWith("mainBoard.do")) { // main의 search list
					url = listMain(request, response);
				} else if (action.endsWith("searchBoard.do")) { // search의 search list
					url = listSearch(request, response);
				} else if (action.endsWith("productdetails.do")) {
					url = productDetail(request, response);
				} else if (action.endsWith("login.do")) {
					url = login(request, response);
				} else if (action.endsWith("loginForm.do")) {
					url = "contact.jsp";
				} else if (action.endsWith("recommend.do")) {
					url = recommend(request, response);
				}
			} else {
				url = listMain(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
			url = "ErrorHandler.jsp";
		}

		if (url.startsWith("redirect")) {
			response.sendRedirect(url.substring(url.indexOf(":") + 1));
		} else {
			request.getRequestDispatcher(url).forward(request, response);
		}
	}

	private String recommend(HttpServletRequest request, HttpServletResponse response) {
		Random rand = new Random();
		int num1 = rand.nextInt(19) + 1;
		Food food1 = foodService.search(num1);

		int num2 = rand.nextInt(19) + 1;
		while (num1 == num2) {
			num2 = rand.nextInt(19) + 1;
		}

		Food food2 = foodService.search(num2);

		int num3 = rand.nextInt(19) + 1;
		while (num1 == num3 || num2 == num3) {
			num3 = rand.nextInt(19) + 1;
		}

		Food food3 = foodService.search(num3);

		request.setAttribute("food1", food1);
		request.setAttribute("food2", food2);
		request.setAttribute("food3", food3);

		return "Recommend.jsp";
	}

	private String login(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		try {
			memberService.login(id, pw);
			HttpSession session = request.getSession();
			return "redirect:main.do?action=loginForm.do";// 로그인성공
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			return "login-register.jsp";
		}
	}

	private String productDetail(HttpServletRequest request, HttpServletResponse response) {

		String no = request.getParameter("code");
		System.out.println(no);
		no = no.replaceAll("[^0-9]", "");

		int code = Integer.parseInt(no);

		Food food1 = foodService.search(code);

		request.setAttribute("food1", food1);

		return "product-details.jsp";
		// return "redirect:main.do?action=productdetails.do&no="+no;
	}

	private String mostWord(String wList) {
		if (wList.contains("null"))
			wList = wList.replace("null", "");
		String word = null;
		String[] arr = wList.split(" ");
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		int max = -1;
		String maxVal = null;
		for (int i = 0; i < arr.length; i++) {
			String now = arr[i];
			if (map.containsKey(now)) {
				int tmp = map.get(now);
				tmp++;
				map.put(now, tmp);
				if (max < tmp) {
					max = tmp;
					maxVal = now;
				}
			} else {
				map.put(now, 1);
			}
			if (max == -1)
				maxVal = now;
		}
		word = maxVal;

		return word;
	}

	// main화면의 검색된 정보
	private String listMain(HttpServletRequest request, HttpServletResponse response) {
		String criteria = request.getParameter("criteria");
		String searchText = request.getParameter("searchText");
		// 세션에 저장
		HttpSession session = request.getSession();
		if (session == null)
			session.setAttribute("wlist", "null ");
		String wList = (String) session.getAttribute("wlist");
		// wList = wList.replace("null", "");
		session.setAttribute("wlist", wList + " " + searchText);
		// System.out.println(session.getAttribute("wlist"));
		session.setAttribute("most", mostWord(wList));
		System.out.println("젤많이검색:" + session.getAttribute("most"));
		// 여기까지
		FoodPageBean bean = new FoodPageBean(criteria, searchText, "1", 20);

		List<Food> foods = foodService.searchAll(bean);
		Collections.sort(foods, new Comparator<Food>() {
			@Override
			public int compare(Food o1, Food o2) {
				return o1.getName().compareTo(o2.getName());
			}
		});
		request.setAttribute("bean", bean);
		request.setAttribute("foods", foods);
		System.out.println(foods);
		return "index.jsp";
	}

	// search 화면에 검색된 정보
	private String listSearch(HttpServletRequest request, HttpServletResponse response) {
		String criteria = request.getParameter("criteria");
		String searchText = request.getParameter("searchText");
		// 세션에 저장
		HttpSession session = request.getSession();
		if (session == null)
			session.setAttribute("wlist", "null ");
		String wList = (String) session.getAttribute("wlist");
		// wList = wList.replace("null", "");
		session.setAttribute("wlist", wList + " " + searchText);
		// System.out.println(session.getAttribute("wlist"));
		session.setAttribute("most", mostWord(wList));
		System.out.println("젤많이검색:" + session.getAttribute("most"));
		// 여기까지
		FoodPageBean bean = new FoodPageBean(criteria, searchText, "1", 20);

		List<Food> foods = foodService.searchAll(bean);
		Collections.sort(foods, new Comparator<Food>() {
			@Override
			public int compare(Food o1, Food o2) {
				return o1.getName().compareTo(o2.getName());
			}
		});
		System.out.println(foods);

		request.setAttribute("bean", bean);
		request.setAttribute("foods", foods);

		return "search.jsp";
	}

	private String memberRegit(HttpServletRequest request, HttpServletResponse response) {
		// 1. 요청 정보 추출
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");

		// 2. 모델 수행
		Member member = new Member(id, pw, name, email, phone, address);
		memberService.add(member);
		// action에 내가 가야할 곳 넣어주기
		return "redirect:main.do?action=memberSearch.do&id=" + id;
	}

	private String memberSearch(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		request.setAttribute("member", memberService.search(id));

		return "member/memberSearch.jsp";
	}

}
