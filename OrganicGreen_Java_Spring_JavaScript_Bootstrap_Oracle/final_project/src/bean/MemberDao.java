package bean;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;

import mybatis.MybatisFactory;

public class MemberDao {
	SqlSession sqlSession;
	HttpServletRequest req;

	public MemberDao() {
		try {
			sqlSession = MybatisFactory.getFactory().openSession();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
	
	
	//회원가입 - 이메일 인증- 이메일 여부
	public String alreadyEmail(String checkEmail) {
		String ce;
		System.out.println(checkEmail);
		int cnt = sqlSession.selectOne("member.alreadyEmail", checkEmail);
//		cnt가 존재하면 회원가입 불가
		//cnt>0 존재하는 회원 cnt<0 존재하지않는 회원
		System.out.println(cnt);
		if(cnt<1) {
			ce="OK";
		}else {
			ce="NO";
		}
		return ce;
	}
	
	//비밀번호 찾기- 비밀번호 찾기위한 정보들이 맞는지찾기
		public SbMemberVo findPwd(SbMemberVo sbVo) {
			//이름과 이메일과 아이디로  비밀번호가 존재하는지 찾는다. 
			sbVo =sqlSession.selectOne("member.findPwd",sbVo);
			return sbVo;
		}
		
	
	//아이디 찾기-아이디찾기
	public SbMemberVo findId(SbMemberVo sbVo) {
		//이름과 이메일로 아이디를 찾는다.
		sbVo =sqlSession.selectOne("member.findId",sbVo);
		return sbVo;
	}
	
	
	// 회원가입- ( 최종 )가입하기
	public String registerFinal(SbMemberVo sbVo) {
		String msg = "OK";
		try {
			
		
			int cnt = sqlSession.insert("member.sbRegister",sbVo);
			
			if(cnt<1) {
				msg="NO";
			}else {
				sqlSession.commit();
			}
			
			int cnt2 = sqlSession.insert("member.bRegister",sbVo);
			
			if(cnt2<1) {
				msg ="NO";	
			}else {
				sqlSession.commit();
			}
		} catch (Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
		} finally {
			return msg;

		}

	}

	// 난수설정
	public int nansu() {
		double su = Math.random();
		int nansu = 0;

		nansu = (int) (su * 99999) + 1;
		System.out.println(nansu);
		return nansu;
	}

	public boolean idCheck(String bId) {
		boolean b = true;
		try {
			// 아이디가 존재하는지 체크
			int cnt = sqlSession.selectOne("member.idCheck", bId);
			// 존재할 시 b는 true
			if (cnt > 0)
				b = false;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return b;
		}

	}

	public SbMemberVo login(SbMemberVo sbVo) {
		try {
			sbVo = sqlSession.selectOne("member.login", sbVo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return sbVo;
		}

	}

}
