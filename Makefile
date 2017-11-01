commit:
	jekyll build
	git checkout gh-pages
	mv _site/* . && \
		git add . && \
		git commit -m "Auto generated at $(shell date +'%F %T')" && \
		git push
	git checkout master
