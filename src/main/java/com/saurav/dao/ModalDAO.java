package com.saurav.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

import javax.transaction.Transactional;

import com.saurav.modal.Modal;

@Component
public class ModalDAO {

	@Autowired
	HibernateTemplate hibernateTemplate;

	@Transactional
	public int save(Modal modal) {
		Integer integer = (Integer) this.hibernateTemplate.save(modal);
		return integer;
	}

	public List<Modal> getAll() {
		List<Modal> mList = this.hibernateTemplate.loadAll(Modal.class);
		return mList;
	}

}
