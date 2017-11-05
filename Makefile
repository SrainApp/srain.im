commit:
	git checkout gh-pages && \
		rm -r ./assets && \
		mv _site/* . && \
		git pull && \
		git add . && \
		git commit -m "Auto generated at $(shell date +'%F %T')" && \
		git push
	git checkout master
