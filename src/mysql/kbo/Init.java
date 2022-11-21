package mysql.kbo;

import java.util.List;

public class Init {

	public static void main(String[] args) {
		PlayerDao dao = new PlayerDao();
		dao.createTable();

		dao.insertPlayer(new Player(1, "임찬규", "투수", "1992-11-20", 185, 0));
		dao.insertPlayer(new Player(18, "정우영", "투수", "1999-08-19", 193, 0));
		dao.insertPlayer(new Player(19, "고우석", "투수", "1998-08-06", 182, 0));
		dao.insertPlayer(new Player(31, "이정용", "투수", "1996-03-26", 186, 0));
		dao.insertPlayer(new Player(27, "유강남", "포수", "1992-07-15", 182, 0));
		dao.insertPlayer(new Player(30, "허도환", "포수", "1984-07-31", 176, 0));
		dao.insertPlayer(new Player(10, "오지환", "내야수", "1990-03-12", 186, 0));
		dao.insertPlayer(new Player(35, "문보경", "내야수", "2000-07-19", 182, 0));
		dao.insertPlayer(new Player(55, "채은성", "내야수", "1990-02-06", 186, 0));
		dao.insertPlayer(new Player(17, "박해민", "외야수", "1990-02-24", 180, 0));
		dao.insertPlayer(new Player(22, "김현수", "외야수", "1988-01-12", 188, 0));
		dao.insertPlayer(new Player(51, "홍창기", "외야수", "1993-11-21", 189, 0));

		List<Player> list = dao.getPlayers();
		for (Player p : list)
			System.out.println(p);
	}

}