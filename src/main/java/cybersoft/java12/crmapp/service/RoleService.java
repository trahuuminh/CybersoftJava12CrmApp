package cybersoft.java12.crmapp.service;

import java.sql.SQLException;
import java.util.List;

import cybersoft.java12.crmapp.dao.RoleDao;
import cybersoft.java12.crmapp.dto.RoleCreateDto;
import cybersoft.java12.crmapp.model.Role;

public class RoleService {
	private RoleDao roleDao;
	
	public RoleService() {
		roleDao = new RoleDao();
	}
	
	public List<Role> findAllRole() {
		List<Role> roles = null;
		try {
			roles = roleDao.findAllRole();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return roles;
	}
	
	public Role findRoleById(int id) {
		Role role = null;
		try {
			role = roleDao.findRoleById(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return role;
	}
	
	public List<Role> findAllRoleReplace(int id){
		List<Role> roles=null;
		try {
			return roleDao.findAllRoleReplace(id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return roles;
	}
	
	public void updateReplace(int newId,int oldId) throws SQLException {
		roleDao.updateReplace(newId, oldId);
	}
	
	public void addNewRole(RoleCreateDto dto) {
		try {
			roleDao.addNewRole(dto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void updateRole(RoleCreateDto dto, int idToUpdate) {
		try {
			roleDao.updateRole(dto, idToUpdate);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void deleteRoleById(int id) {
		try {
			roleDao.deleteRoleById(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public boolean unUsedRole(int id) throws SQLException {
		return	roleDao.unUsedRole(id);
	}
}
