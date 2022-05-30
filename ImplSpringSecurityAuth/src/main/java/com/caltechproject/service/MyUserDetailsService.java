package com.caltechproject.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.caltechproject.entity.MyUserDetails;
import com.caltechproject.entity.UserEntity;
import com.caltechproject.repository.UserRepository;



@Service
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	UserRepository userRepo;
	
	public UserEntity GetUserByName(String name) {
		Optional<UserEntity> user = userRepo.findUserByName(name);
		if(!user.isPresent()) throw new RuntimeException();
		return user.get();
	}

	@Override
	public org.springframework.security.core.userdetails.UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		return new MyUserDetails(GetUserByName(username));
	}
}
