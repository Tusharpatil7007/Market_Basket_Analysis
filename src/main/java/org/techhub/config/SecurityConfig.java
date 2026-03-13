package org.techhub.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

	@Bean
	 public SecurityFilterChain filterChain(HttpSecurity http)throws Exception
	 {	http.csrf().disable();
		http.authorizeHttpRequests(auth->
		auth.
		requestMatchers(AntPathRequestMatcher.antMatcher("/WEB-INF/**")).
		permitAll().anyRequest().
		authenticated()).formLogin(form->form.loginPage("/login").
		loginProcessingUrl("/login").
		defaultSuccessUrl("/dashboard",true).permitAll())
		.logout(logout->logout.logoutSuccessUrl("/login?logout=true").permitAll());
		 
		 return http.build();
	 }
}
