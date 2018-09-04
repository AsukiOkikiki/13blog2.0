package top.blogs.po;

public class Comment {
	private int cid;
	private String ccontent;
	private String cdate;
	private int uid;
	private int bid;

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCcontent() {
		return ccontent;
	}

	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}

	public String getCdate() {
		return cdate;
	}

	public void setCdate(String cdate) {
		this.cdate = cdate;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public Comment() {
	}

	public Comment(String ccontent, String cdate, int uid, int bid) {
		this.ccontent = ccontent;
		this.cdate = cdate;
		this.uid = uid;
		this.bid = bid;
	}

	public String toString() {
		return "Comment [cid=" + cid + ", ccontent=" + ccontent + ", cdate=" + cdate + ", uid=" + uid + ", bid=" + bid
				+ "]";
	}
}
