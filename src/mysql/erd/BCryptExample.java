package mysql.erd;

import org.mindrot.jbcrypt.BCrypt;

/*
 * $2a : bcrya\pt version 정보
 * $10 : 라운드 정보
 */
public class BCryptExample {

	public static void main(String[] args) {
		String pwd = "1234asd";
		String cryptedPwd = BCrypt.hashpw(pwd, BCrypt.gensalt());
		System.out.println(cryptedPwd.length());
		System.out.println(cryptedPwd);

		String cryptedPwd2 = BCrypt.hashpw(pwd, BCrypt.gensalt());
		System.out.println(cryptedPwd2);
		System.out.println();

		String salt = BCrypt.gensalt();
		System.out.println(salt);
		System.out.println(salt.length());

		// salt 값이 동일하면 만들어진 비문이 동일함
		System.out.println(BCrypt.hashpw(pwd, salt));
		System.out.println(BCrypt.hashpw(pwd, salt));

		// 패스워드가 동일한지 확인
		boolean result = BCrypt.checkpw(pwd, cryptedPwd);
		System.out.println(result);
	}

}
