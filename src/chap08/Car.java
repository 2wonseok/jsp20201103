package chap08;

public class Car {
 private String name;
 private int speed;

	public boolean getStop() { // isStop으로 메소드명 대체 가능
		return speed == 0;
	}
	 
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSpeed() {
		return speed;
	}
	public void setSpeed(int speed) {
		this.speed = speed;
	}
 
 
}
