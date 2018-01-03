package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TCeping;

/**
 * A data access object (DAO) providing persistence and search support for
 * TCeping entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.model.TCeping
 * @author MyEclipse Persistence Tools
 */

public class TCepingDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(TCepingDAO.class);
	// property constants
	public static final String MINGCHENG = "mingcheng";
	public static final String FENZHI = "fenzhi";
	public static final String BEIZHU = "beizhu";
	public static final String SHIJIAN = "shijian";
	public static final String USER_ID = "userId";

	protected void initDao() {
		// do nothing
	}

	public void save(TCeping transientInstance) {
		log.debug("saving TCeping instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TCeping persistentInstance) {
		log.debug("deleting TCeping instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TCeping findById(java.lang.Integer id) {
		log.debug("getting TCeping instance with id: " + id);
		try {
			TCeping instance = (TCeping) getHibernateTemplate().get(
					"com.model.TCeping", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TCeping instance) {
		log.debug("finding TCeping instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding TCeping instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from TCeping as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByMingcheng(Object mingcheng) {
		return findByProperty(MINGCHENG, mingcheng);
	}

	public List findByFenzhi(Object fenzhi) {
		return findByProperty(FENZHI, fenzhi);
	}

	public List findByBeizhu(Object beizhu) {
		return findByProperty(BEIZHU, beizhu);
	}

	public List findByShijian(Object shijian) {
		return findByProperty(SHIJIAN, shijian);
	}

	public List findByUserId(Object userId) {
		return findByProperty(USER_ID, userId);
	}

	public List findAll() {
		log.debug("finding all TCeping instances");
		try {
			String queryString = "from TCeping";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TCeping merge(TCeping detachedInstance) {
		log.debug("merging TCeping instance");
		try {
			TCeping result = (TCeping) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TCeping instance) {
		log.debug("attaching dirty TCeping instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TCeping instance) {
		log.debug("attaching clean TCeping instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TCepingDAO getFromApplicationContext(ApplicationContext ctx) {
		return (TCepingDAO) ctx.getBean("TCepingDAO");
	}
}