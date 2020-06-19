package com.example.demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
@EnableWebSecurity
public class CustomWebSecurityConfigurerAdapter extends WebSecurityConfigurerAdapter{


	 @Autowired
	    CustomUserDetailsService customUserDetailsService;

	    @Bean
	    public PasswordEncoder passwordEncoder() {
	      return new BCryptPasswordEncoder();
	    }


	    @Override
	    public void configure(WebSecurity web) throws Exception {
	        web.ignoring()
	        .antMatchers("/resource/**","/signUp","/UserSignUp","/overlapName", "/hpSignUp");
	    }


	    @Override
	    protected void configure(HttpSecurity http) throws Exception {
	    	 http.authorizeRequests()
	         // ROLE_USER, ROLE_ADMIN으로 권한 분리 유알엘 정의 여기 밑에 넣으면 nav가 활성화가 된다. 위에는 그냥 참고만 하자
//		         .antMatchers()
//		         .permitAll()
		         .antMatchers().access("hasRole('ROLE_USER')") //hasRole 이걸 붙이고 괄호 해주고 , ROLE_ <-이거 안붙이면 오류가 발생한다. 이걸 몇일이나 고민하냐 '안에는 이걸 붙여주세요
		         .antMatchers("/admin").hasRole("ADMIN")
		         .anyRequest().authenticated() //나머지 요청에 대해서는 인증된  사용자만 접근이 되도록 설정하고 있다.
	         .and().formLogin()
	         	 .loginPage("/login")
	         	 .loginProcessingUrl("/login")
	         	 .usernameParameter("dd_user_id")
	             .passwordParameter("dd_user_pw")
	             .defaultSuccessUrl("/main")
	             .permitAll()
	         .and()
		         .logout()
		         .logoutSuccessUrl("/login")
		         .invalidateHttpSession(true)
			 .and()//범인 추가  csrf(); 이걸로 수정 해줭
			 	 .csrf();




//			에러 문제점 forbidden 403
			 http.cors().and();
			 http.csrf().disable();
			 http.headers().frameOptions().disable();
	    }



	    @Override
	    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	    	System.out.println(auth);
	    	/* PasswordEncoder로 비밀번호 암호화 */
	        System.out.println(auth.userDetailsService(customUserDetailsService).passwordEncoder(passwordEncoder()));
	    }
}
