package ch18_io.object;

import java.io.Serializable;

public class Member implements Serializable {

	/**
	 * 
	 */
//	private static final long serialVersionUID = 1L;
	private static final long serialVersionUID = -573483478432798L;
	private String id;
	private String name;

	Member(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", name=" + name + "]";
	}

}
