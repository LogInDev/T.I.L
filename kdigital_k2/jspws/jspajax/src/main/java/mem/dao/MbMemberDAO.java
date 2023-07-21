package mem.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mem.mybatis.OracleSessionManager;
import membership.MemberDTO;

public class MbMemberDAO {
	SqlSessionFactory sqlSessionFactory = OracleSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	public List<MemberDTO> getMemberList(){
		List<MemberDTO> list = null;
		list = sqlSession.selectList("member.getMemberList");
		return list;
	}
	
	public MemberDTO getMember(String id) {
		MemberDTO dto = sqlSession.selectOne("member.getMember", id);
		return dto;
	}
}
