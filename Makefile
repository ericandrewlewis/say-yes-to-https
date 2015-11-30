build:
	jekyll build;

deploy: build
	s3_website push;