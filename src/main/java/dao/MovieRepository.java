package dao;

import java.util.ArrayList;

import dto.Movie;

public class MovieRepository {
	
	public Movie getMovieById(String movieId) {
		Movie movieById = null;
		
		for(int i = 0;i<listOfMovies.size();i++) {
			Movie movie = listOfMovies.get(i);
			if(movie!=null && movie.getMovieId() != null && movie.getMovieId().equals(movieId)) {
				movieById = movie;
				break;
			}
		}
		return movieById;
	}
	
	private ArrayList<Movie> listOfMovies = new ArrayList<Movie>();
	private static MovieRepository instance = new MovieRepository();
	
	public static MovieRepository getInstance() {
		return instance;
	}
	
	public void addMovie(Movie movie) {
		listOfMovies.add(movie);
	}
	
	public MovieRepository() {
		Movie m1 = new Movie("M1234", "서울의 봄");
		m1.setFilename("M1234.png");
		m1.setReleaseDate("2023.11.12");
		m1.setTimeAndAge("1시간30분/12세 이용가");
		m1.setDescription("1979년 12월 12일, 수도 서울 군사반란 발생 그날, "
				+ "대한민국의 운명이 바뀌었다 대한민국을 뒤흔든 10월 26일 이후, 서울에 새로운 바람이 불어온 것도 잠시 12월 12일, "
				+ "보안사령관 전두광이 반란을 일으키고 군 내 사조직을 총동원하여 최전선의 전방부대까지 서울로 불러들인다. "
				+ "권력에 눈이 먼 전두광의 반란군과 이에 맞선 수도경비사령관 이태신을 비롯한 진압군 사이, 일촉즉발의 9시간이 흘러가는데… "
				+ "목숨을 건 두 세력의 팽팽한 대립 오늘 밤, 대한민국 수도에서 가장 치열한 전쟁이 펼쳐진다!");	
		m1.setArr("51.6%");
		
		Movie m2 = new Movie("M1235", "나폴레옹");
		m2.setFilename("M1235.png");
		m2.setReleaseDate("2024.1.15");
		m2.setTimeAndAge("2시간/15세 이용가");
		m2.setDescription("스스로 황제가 된 영웅! 1793년 혁명의 불꽃이 프랑스 전역을 밝히기 시작한다. "
				+ "코르시카 출신의 장교 '나폴레옹'(호아킨 피닉스)은 혼란스러운 상황 속 국가를 위해 맞서며 영웅으로 떠오른다. "
				+ "한편, 사교 파티에서 영웅 ‘나폴레옹’을 만난 '조제핀'(바네사 커비)은 자신의 운명을 바꾸기 위해 ‘나폴레옹’을 선택하고 "
				+ "‘나폴레옹’은 마침내 스스로 황제의 자리에 오르게 된다. 하지만, ‘조제핀’은 계속해서 ‘나폴레옹’을 흔들고, "
				+ "‘나폴레옹’의 야망은 ‘조제핀’과 끝없이 충돌하는데… 세상을 정복한 영웅 아무것도 갖지 못한 황제, ‘나폴레옹’의 대서사가 펼쳐진다!");
		m2.setArr("15.4%");
		
		Movie m3 = new Movie("M1236", "그대들 어떻게 살 것인가");
		m3.setFilename("M1236.png");
		m3.setReleaseDate("2023.12.16");
		m3.setTimeAndAge("1시간30분/12세 이용가");
		m3.setDescription("화재로 어머니를 잃은 11살 소년 ‘마히토’는 아버지와 함께 어머니의 고향으로 간다. "
				+ "어머니에 대한 그리움과 새로운 보금자리에 적응하느라 힘들어하던 ‘마히토’ 앞에 정체를 알 수 없는 왜가리 한 마리가 나타나고, "
				+ "저택에서 일하는 일곱 할멈으로부터 왜가리가 살고 있는 탑에 대한 신비로운 이야기를 듣게 된다. 그러던 어느 날, "
				+ "‘마히토’는 사라져버린 새엄마 ‘나츠코’를 찾기 위해 탑으로 들어가고, 왜가리가 안내하는 대로 이세계(異世界)의 문을 통과하는데…!");
		m3.setArr("5.6%");

		
		listOfMovies.add(m1);
		listOfMovies.add(m2);
		listOfMovies.add(m3);
	}
	
	public ArrayList<Movie> getAllMovies(){
		return listOfMovies;
	}
}
