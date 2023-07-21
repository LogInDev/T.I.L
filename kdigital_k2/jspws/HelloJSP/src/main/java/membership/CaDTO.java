package membership;

public class CaDTO {
	private String num;
	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}
	private String id;
	private String content;
	public CaDTO(String num, String id, String content){
		super();
		this.num = num;
		this.id = id;
		this.content = content;
		this.postdate = postdate;
		this.goodcount = goodcount;
	}
	private String postdate;
	private String goodcount;

	public CaDTO() {
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPostdate() {
		return postdate;
	}
	public void setPostdate(String postdate) {
		this.postdate = postdate;
	}
	public String getGoodcount() {
		return goodcount;
	}
	public void setGoodcount(String goodcount) {
		this.goodcount = goodcount;
	}

}
