gh-pages:
	git worktree add gh-pages gh-pages

html-openqa:
	perl -I ../App-BBSlides-p5/lib ../App-BBSlides-p5/bin/bbslides \
	openqa/slides/openqa.yaml \
	--data openqa/data \
	--html-data openqa/html/data \
	--out gh-pages/openqa

html-yaml:
	perl -I ../App-BBSlides-p5/lib ../App-BBSlides-p5/bin/bbslides \
	yaml/slides/yaml.yaml \
	--data yaml/data \
	--html-data yaml/html/data \
	--out gh-pages/yaml

highlight-yaml:
	./utils/highlightyaml.sh

html-status:
	cd gh-pages && git status

