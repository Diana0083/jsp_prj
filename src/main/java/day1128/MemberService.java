package day1128;

public class MemberService {
	
	
	//유효성 검증 후 DAO로 넘기면 된다.
	public void joinMember(ParamDTO pDTO) { //parameter가 1개 이상일 때 만든다.(그게 편함)
		//회원 테이블을 inset하는 쿼리를 실행하는 DAO method
		System.out.println("Servie" + pDTO );
		//히스토리에 테이블을 insert하는 쿼리를 DAO method
	}//joinMember
	
}//class
