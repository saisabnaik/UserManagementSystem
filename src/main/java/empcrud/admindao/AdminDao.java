package empcrud.admindao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import empcrud.admin.Admin;
import empcrud.model.Emp;

@Component
public class AdminDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Transactional
	//create
	public void createAdmin(Admin admin)
	{
	   this.hibernateTemplate.save(admin);
    }
	//getAdmin
	public Admin getAdmin(String  name) {
		return this.hibernateTemplate.get(Admin.class, name);
	}

}
