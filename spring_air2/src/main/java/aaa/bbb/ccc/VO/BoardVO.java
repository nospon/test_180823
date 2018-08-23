package aaa.bbb.ccc.VO;

public class BoardVO {
	
	int board_num;
	String id;
	String name;
	
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "BoardVO [board_num=" + board_num + ", id=" + id + ", name=" + name + "]";
	}
	
	
	
}
