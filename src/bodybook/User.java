package bodybook;

import java.util.Hashtable;

public class User {
	
	private static User userlist = null;
	private static Integer userNum = 1;
	private Hashtable<Integer, Member> list = new Hashtable<Integer, Member>();

	private void userJoin () {
		userNum++;
	}
	
	public void addUser (Member user) {
		list.put(userNum, user);
		userJoin();
	}
	
	public static User makeUserList () {
		if (userlist == null) {
			userlist = new User();
		}
		return userlist;
	}
	
	private User () {}

	public Hashtable<Integer, Member> getList() {
		return list;
	};
}
