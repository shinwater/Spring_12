package com.spring.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository//dao 클래스 ...~인 킐래스는 이거 꼭 붙여야 빈으로 등록됨!
public class EmpDAOImpl implements EmpDAO{

	@Autowired
	private SqlSessionTemplate SqlSession;
	
	@Override
	public List<EmpDTO> getList() {
		// TODO Auto-generated method stub
		return SqlSession.selectList("allList"); //인자이름은 아무거나줘도됨.ㅎㅎ
			
	}

	@Override
	public List<DeptDTO> deptList() {
		// TODO Auto-generated method stub
		return SqlSession.selectList("deptList");
	}

	@Override
	public int insertEmp(EmpDTO dto) {
		// TODO Auto-generated method stub
		return SqlSession.insert("add", dto);
	}

	@Override
	public EmpDTO content(int empno) {
		// TODO Auto-generated method stub
		return SqlSession.selectOne("cont", empno);
	}

	@Override
	public int updateEmp(EmpDTO dto) {
		// TODO Auto-generated method stub
		return SqlSession.update("edit", dto);
	}

	@Override
	public int deleteEmp(int empno) {
		// TODO Auto-generated method stub
		return SqlSession.delete("del", empno);
	}
	
}
