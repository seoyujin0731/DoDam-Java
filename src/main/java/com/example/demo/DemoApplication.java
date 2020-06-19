package com.example.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

//디비 에러가 만약에 생기면 여기에 dao추가
@MapperScan(value = {"com.example.board.mapper" , "com.example.user.mapper"})
@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

	

	//Tiles
		@Bean
		public TilesConfigurer tilesConfigurer() {
			final TilesConfigurer configurer = new TilesConfigurer();
			configurer.setDefinitions(new String[] { "/WEB-INF/tiles/tiles.xml" });
			configurer.setCheckRefresh(true);
			return configurer;
		}

		@Bean
		public UrlBasedViewResolver tilesViewResolver() {
			UrlBasedViewResolver resolver = new UrlBasedViewResolver();
			resolver.setViewClass(TilesView.class);
			return resolver;
		}

}
