package cs.dit.dto;

/**===================================================
 * 패키지명 : cs.dit
 * 파일명 : LoginDto.java
 * 변경이력 : 
 * 	2022-5-2 / 최초입력 / 박지예

 * 프로그램 설명 : 
 * 	데이터 전달을 위한 객체
 *=====================================================*/
public class LoginDto {
	private String id;
	private String name;
	private String pwd;
	
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
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public LoginDto() {} //기본생성자
	
	public LoginDto(String id, String name, String pwd) {
		this.id = id;
		this.name = name;
		this.pwd = pwd;
	}
	
	

}
