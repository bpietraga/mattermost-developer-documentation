module github.com/mattermost/mattermost-developer-documentation

go 1.12

replace (
	github.com/nicksnyder/go-i18n => github.com/nicksnyder/go-i18n v1.10.1
	gopkg.in/asn1-ber.v1 => github.com/go-asn1-ber/asn1-ber v1.3.2-0.20191121212151-29be175fc3a3

	github.com/mattermost/mattermost-server/plugin => github.com/mattermost/mattermost-server/plugin v5.17.1
)
