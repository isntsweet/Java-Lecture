
package mysql.kbo;

import java.util.List;

public class Test {

	public static void main(String[] args) {
		PlayerDao dao = new PlayerDao();

		Player p = dao.getPlayer(10);
//		System.out.println(p);

		p.setHeight(186);
		dao.updatePlayer(p);

		List<Player> list = dao.getPlayers();

		for (Player pp : list)
			System.out.println(pp);
	}

}