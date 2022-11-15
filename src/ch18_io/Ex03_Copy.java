package ch18_io;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class Ex03_Copy {

	public static void main(String[] args) throws IOException {
		String srcFile = "/Users/type_/OneDrive/사진/cats.jpg";
		String dstFile = "/Temp/cats.jpg";

		InputStream is = new FileInputStream(srcFile);
		OutputStream os = new FileOutputStream(dstFile);

		byte[] data = new byte[1024]; // 1024 = 1KB
		while (true) {
			int num = is.read(data);
			if (num == -1)
				break;
			os.write(data, 0, num);
		}

		os.flush();
		os.close();
		is.close();
		System.out.println("복사가 잘 되었습니다.");
	}

}
