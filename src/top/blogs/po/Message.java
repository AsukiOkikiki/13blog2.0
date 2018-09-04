package top.blogs.po;

public class Message {
	private boolean success;
	private String msg;

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Message() {
	}

	public Message(boolean success, String msg) {
		this.success = success;
		this.msg = msg;
	}

	public String toString() {
		return "Message [success=" + success + ", msg=" + msg + "]";
	}

}
