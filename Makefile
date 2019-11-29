.PHONY: dist plugin-data backend-plugin-data frontend-plugin-data

dist: plugin-data
	rm -rf ./dist
	cd site && hugo --destination ../dist/html

plugin-data: backend-plugin-data frontend-plugin-data devtalks-data

backend-plugin-data:
	# go get -u -v github.com/go-asn1-ber/asn1-ber@master
	go get ./...
	# go get github.com/stretchr/testify
	# go get golang.org/x/text/language
	# go get golang.org/x/crypto
	# go get github.com/fsnotify/fsnotify
	# go get -u github.com/dyatlov/go-opengraph/opengraph
	# go get -u github.com/mattermost/mattermost-server/utils/fileutils
	# go get -u github.com/mattermost/mattermost-server/mlog
	# go get -u cloud.google.com/go/storage
	# go get -u github.com/googleapis/gax-go
	# go get -u github.com/pborman/uuid
	# go get -u github.com/golang/mock
	# go get -u github.com/hashicorp/go-plugin
	# go get github.com/nicksnyder/go-i18n@go1
	# go get -v -u github.com/go-asn1-ber/asn1-ber
	go get -fix github.com/mattermost/mattermost-server/plugin
	mkdir -p site/data
	go run scripts/plugin-godocs.go > site/data/PluginGoDocs.json
	go run scripts/plugin-manifest-docs.go > site/data/PluginManifestDocs.json

frontend-plugin-data:
	rm -rf scripts/mattermost-webapp
	cd scripts && git clone https://github.com/mattermost/mattermost-webapp.git
	cd scripts && npm install
	mkdir -p site/data
	node scripts/plugin-jsdocs.js > site/data/PluginJSDocs.json

devtalks-data:
	mkdir -p site/data
ifdef YOUTUBE_API_KEY
	go run scripts/devtalks.go > site/data/DevTalks.json
endif

dev:
	cd site && hugo server -D
