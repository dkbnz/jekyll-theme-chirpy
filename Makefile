JEKYLL_VERSION = 4.2.2

serve:
	docker run --rm \
	--volume="$$PWD:/srv/jekyll:Z" \
	--publish [::1]:4000:4000 \
	jekyll/jekyll:$(JEKYLL_VERSION) \
	jekyll serve --trace

build:
	docker run --rm \
	--volume="$$PWD:/srv/jekyll:Z" \
	--env JEKYLL_ENV=production \
	jekyll/jekyll:$(JEKYLL_VERSION) \
	jekyll build --trace
