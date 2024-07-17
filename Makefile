all: compile-scss update

deploy:
	npx surge ./src

update: compile-scss
	npx surge ./src layout-designer-project-56.surge.sh

compile-scss:
	sass src/scss/app.scss src/css/style.css