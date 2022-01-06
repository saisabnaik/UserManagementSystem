package empcrud.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import empcrud.model.Emp;

@Component
public class EmpDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Transactional
	//create
		public void createEmp(Emp emp)
		{
			this.hibernateTemplate.saveOrUpdate(emp);
		}
    //get all employee
		public List<Emp> getEmps() {
			List<Emp> emps = this.hibernateTemplate.loadAll(Emp.class);
			System.out.println(emps.toString());
			return emps;
		}

		// delete the single product
		@Transactional
		public void deleteEmp(int eid) {
			Emp e = this.hibernateTemplate.load(Emp.class, eid);
			this.hibernateTemplate.delete(e);
		}

		// get the single emp
		public Emp getEmp(int eid) {
			return this.hibernateTemplate.get(Emp.class, eid);
		}

}
