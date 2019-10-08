package src.com.ssafy.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import src.com.ssafy.model.domain.Food;
import src.com.ssafy.model.domain.FoodPageBean;
import src.com.ssafy.util.FoodSaxParser;


public class FoodDAOImpl implements FoodDAO {

	public FoodDAOImpl() {
		//loadData();
	}

	/**
	 * 식품 영양학 정보와 식품 정보를 xml 파일에서 읽어온다.
	 */
	public void loadData() {
		 //  FoodNutritionSaxPaser를 이용하여 Food 데이터들을 가져온다
		FoodSaxParser parser = new FoodSaxParser();
		List<Food> list = parser.getFoods();
		for(int i=0,size = list.size();i<size; i++) {
			System.out.println(list.get(i));
		}
	  //  가져온 Food 리스트 데이터를 DB에 저장한다.
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			//1. driver 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");
			//2. DB 연결
			String url = "jdbc:mysql://localhost:3306/foods?serverTimezone=UTC&useUniCode=yes&characterEncoding=UTF-8";
			String user = "ssafy";
			String pw = "ssafy";
			con = DriverManager.getConnection(url, user, pw);
			//3. SQL문을 위한 Statement 생성
			String sql = "insert into food(code, name, supportpereat, calory, carbo, protein, fat, sugar, natrium, chole, fattyacid, transfat, maker, material, img)"
					+ 	 "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			stmt = con.prepareStatement(sql);
			//4. 결과 처리
			for(int i=0, size = list.size(); i<size; i++) {
				Food now = list.get(i);
				stmt.setInt(1, now.getCode());
				stmt.setString(2, now.getName());
				stmt.setDouble(3, now.getSupportpereat());
				stmt.setDouble(4, now.getCalory());
				stmt.setDouble(5, now.getCarbo());
				stmt.setDouble(6, now.getProtein());
				stmt.setDouble(7, now.getFat());
				stmt.setDouble(8, now.getSugar());
				stmt.setDouble(9, now.getNatrium());
				stmt.setDouble(10, now.getChole());
				stmt.setDouble(11, now.getFattyacid());
				stmt.setDouble(12, now.getTransfat());
				stmt.setString(13, now.getMaker());
				stmt.setString(14, now.getMaterial());
				stmt.setString(15, now.getImg());
				stmt.addBatch();
			}
			stmt.executeBatch();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			//5. 연결 종료
			if(rs!= null)try { rs.close();}catch(Exception e) {}
			if(stmt!= null)try { stmt.close();}catch(Exception e) {}
			if(con!= null)try { con.close();}catch(Exception e) {}
		}


	}

	/**
	 * 검색 조건(key) 검색 단어(word)에 해당하는 식품 정보(Food)의 개수를 반환. web에서 구현할 내용. web에서 페이징 처리시
	 * 필요
	 * 
	 * @param bean 검색 조건과 검색 단어가 있는 객체
	 * @return 조회한 식품 개수
	 */
	public int foodCount(FoodPageBean bean) {
		int count = 0;
		if (bean != null) {
			String key = bean.getKey();
			String word = bean.getWord();
			if (!key.equals("all") && word != null && !word.trim().equals("")) {
				Connection con = null;
				PreparedStatement stmt = null;
				ResultSet rs = null;
				try {
					// 1. 드라이버 로딩
					Class.forName("com.mysql.cj.jdbc.Driver");

					// 2. DB 연결
					String url = "jdbc:mysql://localhost:3306/foods?serverTimezone=UTC&useUniCode=yes&characterEncoding=UTF-8";
					String user = "ssafy";
					String pw = "ssafy";
					con = DriverManager.getConnection(url, user, pw);

					// 3. SQL Statement 생성
					String sql = String.format("select count(*) as count from food where %s like ?", key);
					stmt = con.prepareStatement(sql);
					stmt.setString(1, "%"+word+"%");
					// 쿼리 수행
					rs = stmt.executeQuery();

					// 4. 결과 처리
					// rs.next() : 다음 데이터가 있으면 true 없으면 false
					// 커서를 다음 행으로 이동
					if (rs.next()) {
						count = rs.getInt("count");
					}

				} catch (Exception e) {
//					System.out.println("드라이버 로딩 실패");
					e.printStackTrace();
				} finally {
					if (rs != null)
						try {
							rs.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					if (stmt != null)
						try {
							stmt.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					if (con != null)
						try {
							con.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
				}
				// 구현 하세요.

			} else { // key가 all인 경우
				Connection con = null;
				PreparedStatement stmt = null;
				ResultSet rs = null;
				try {
					// 1. 드라이버 로딩
					Class.forName("com.mysql.cj.jdbc.Driver");

					// 2. DB 연결
					String url = "jdbc:mysql://localhost:3306/foods?serverTimezone=UTC&useUniCode=yes&characterEncoding=UTF-8";
					String user = "ssafy";
					String pw = "ssafy";
					con = DriverManager.getConnection(url, user, pw);

					// 3. SQL Statement 생성
					String sql = String
							.format("select count(*) as count from food where name like ? or maker like ? or material like ?");
					stmt = con.prepareStatement(sql);
					stmt.setString(1, "%"+word+"%");
					stmt.setString(2, "%"+word+"%");
					stmt.setString(3, "%"+word+"%");
					// 쿼리 수행
					rs = stmt.executeQuery();

					// 4. 결과 처리
					// rs.next() : 다음 데이터가 있으면 true 없으면 false
					// 커서를 다음 행으로 이동
					if (rs.next()) {
						count = rs.getInt("count");
					}

				} catch (Exception e) {
//					System.out.println("드라이버 로딩 실패");
					e.printStackTrace();
				} finally {
					if (rs != null)
						try {
							rs.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					if (stmt != null)
						try {
							stmt.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					if (con != null)
						try {
							con.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
				}
			}

		}
		return count;
	}

	/**
	 * 검색 조건(key) 검색 단어(word)에 해당하는 식품 정보(Food)를 검색해서 반환.
	 * 
	 * @param bean 검색 조건과 검색 단어가 있는 객체
	 * @return 조회한 식품 목록
	 */
	public List<Food> searchAll(FoodPageBean bean) {
		List<Food> finds = new LinkedList<Food>();
		if (bean != null) {
			String key = bean.getKey();
			String word = bean.getWord();
			if (!key.equals("all") && word != null && !word.trim().equals("")) {
				Connection con = null;
				PreparedStatement stmt = null;
				ResultSet rs = null;
				try {
					// 1. 드라이버 로딩
					Class.forName("com.mysql.cj.jdbc.Driver");

					// 2. DB 연결
					String url = "jdbc:mysql://localhost:3306/foods?serverTimezone=UTC&useUniCode=yes&characterEncoding=UTF-8";
					String user = "ssafy";
					String pw = "ssafy";
					con = DriverManager.getConnection(url, user, pw);

					// 3. SQL Statement 생성
					String sql = String.format("select * from food where %s like ?", key);
					stmt = con.prepareStatement(sql);
					stmt.setString(1, "%"+word+"%");
					// 쿼리 수행
					rs = stmt.executeQuery();

					// 4. 결과 처리
					// rs.next() : 다음 데이터가 있으면 true 없으면 false
					// 커서를 다음 행으로 이동
					while (rs.next()) {
						Food food = new Food(rs.getInt("code"));	
						food.setName(rs.getString("name"));
						food.setSupportpereat(rs.getDouble("supportpereat"));
						food.setCalory(rs.getDouble("calory"));
						food.setCarbo(rs.getDouble("carbo"));
						food.setProtein(rs.getDouble("protein"));
						food.setFat(rs.getDouble("fat"));
						food.setSugar(rs.getDouble("sugar"));
						food.setNatrium(rs.getDouble("natrium"));
						food.setChole(rs.getDouble("chole"));
						food.setFattyacid(rs.getDouble("fattyacid"));
						food.setTransfat(rs.getDouble("transfat"));
						food.setMaker(rs.getString("maker"));
						food.setMaterial(rs.getString("material"));
						food.setImg(rs.getString("img"));
						finds.add(food);
					}

				} catch (Exception e) {
//					System.out.println("드라이버 로딩 실패");
					e.printStackTrace();
				} finally {
					if (rs != null)
						try {
							rs.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					if (stmt != null)
						try {
							stmt.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					if (con != null)
						try {
							con.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
				}
				// 구현 하세요.

			} else { // key가 all인 경우
				Connection con = null;
				PreparedStatement stmt = null;
				ResultSet rs = null;
				try {
					// 1. 드라이버 로딩
					Class.forName("com.mysql.cj.jdbc.Driver");

					// 2. DB 연결
					String url = "jdbc:mysql://localhost:3306/foods?serverTimezone=UTC&useUniCode=yes&characterEncoding=UTF-8";
					String user = "ssafy";
					String pw = "ssafy";
					con = DriverManager.getConnection(url, user, pw);

					// 3. SQL Statement 생성
					String sql = String
							.format("select * from food where name like ? or maker like ? or material like ?");
					stmt = con.prepareStatement(sql);
					stmt.setString(1, "%"+word+"%");
					stmt.setString(2, "%"+word+"%");
					stmt.setString(3, "%"+word+"%");
					// 쿼리 수행
					rs = stmt.executeQuery();

					// 4. 결과 처리
					// rs.next() : 다음 데이터가 있으면 true 없으면 false
					// 커서를 다음 행으로 이동
					while (rs.next()) {
						Food food = new Food(rs.getInt("code"));
						food.setName(rs.getString("name"));
						food.setSupportpereat(rs.getDouble("supportpereat"));
						food.setCalory(rs.getDouble("calory"));
						food.setCarbo(rs.getDouble("carbo"));
						food.setProtein(rs.getDouble("protein"));
						food.setFat(rs.getDouble("fat"));
						food.setSugar(rs.getDouble("sugar"));
						food.setNatrium(rs.getDouble("natrium"));
						food.setChole(rs.getDouble("chole"));
						food.setFattyacid(rs.getDouble("fattyacid"));
						food.setTransfat(rs.getDouble("transfat"));
						food.setMaker(rs.getString("maker"));
						food.setMaterial(rs.getString("material"));
						food.setImg(rs.getString("img"));
						finds.add(food);
					}

				} catch (Exception e) {
//					System.out.println("드라이버 로딩 실패");
					e.printStackTrace();
				} finally {
					if (rs != null)
						try {
							rs.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					if (stmt != null)
						try {
							stmt.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					if (con != null)
						try {
							con.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
				}
			}

		}
		return finds;
	}

	/**
	 * 식품 코드에 해당하는 식품정보를 검색해서 반환.
	 * 
	 * @param code 검색할 식품 코드
	 * @return 식품 코드에 해당하는 식품 정보, 없으면 null이 리턴됨
	 */
	public Food search(int code) {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			// 1. 드라이버 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 2. DB 연결
			String url = "jdbc:mysql://localhost:3306/foods?serverTimezone=UTC&useUniCode=yes&characterEncoding=UTF-8";
			String user = "ssafy";
			String pw = "ssafy";
			con = DriverManager.getConnection(url, user, pw);

			// 3. SQL Statement 생성
			// String query = "select * from emp";
			stmt = con.prepareStatement("select * from food where code = ?");
			stmt.setInt(1, code);
			// 쿼리 수행
			rs = stmt.executeQuery();

			// 4. 결과 처리
			// rs.next() : 다음 데이터가 있으면 true 없으면 false
			// 커서를 다음 행으로 이동
			Food food = new Food(code);
			if (rs.next()) {
				food.setName(rs.getString("name"));
				food.setSupportpereat(rs.getDouble("supportpereat"));
				food.setCalory(rs.getDouble("calory"));
				food.setCarbo(rs.getDouble("carbo"));
				food.setProtein(rs.getDouble("protein"));
				food.setFat(rs.getDouble("fat"));
				food.setSugar(rs.getDouble("sugar"));
				food.setNatrium(rs.getDouble("natrium"));
				food.setChole(rs.getDouble("chole"));
				food.setFattyacid(rs.getDouble("fattyacid"));
				food.setTransfat(rs.getDouble("transfat"));
				food.setMaker(rs.getString("maker"));
				food.setMaterial(rs.getString("material"));
				food.setImg(rs.getString("img"));
			}
			return food;

		} catch (Exception e) {
//			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			if (stmt != null)
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		// 코드에 맞는 식품 검색하여 리턴
		return null;
	}

	/**
	 * 가장 많이 검색한 Food 정보 리턴하기 web에서 구현할 내용.
	 * 
	 * @return
	 */
	
	public static void main(String[] args) {
		FoodDAOImpl dao = new FoodDAOImpl();
		dao.loadData();
		System.out.println(dao.search(1));
		System.out.println("===========================material로 검색=================================");
		print(dao.searchAll(new FoodPageBean("material", "감자전분", null, 0)));
		System.out.println("===========================maker로 검색=================================");
		print(dao.searchAll(new FoodPageBean("maker", "빙그레", null, 0)));
		System.out.println("===========================name으로 검색=================================");
		print(dao.searchAll(new FoodPageBean("name", "라면", null, 0)));
		System.out.println("============================================================");
		print(dao.searchAll(null));
		System.out.println("============================================================");
	}

	public static void print(List<Food> foods) {
		for (Food food : foods) {
			System.out.println(food);
		}
	}


}
