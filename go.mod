module github.com/mattermost/mattermost-developer-documentation

go 1.12

replace (
	gopkg.in/asn1-ber.v1 => github.com/go-asn1-ber/asn1-ber master
	github.com/nicksnyder/go-i18n => github.com/nicksnyder/go-i18n v1
	github.com/mattermost/mattermost-server =>  github.com/mattermost/mattermost-server a63684fcb5e3ba7b7522b35c29a4cb27779ba823
	github.com/alecthomas/units =>  github.com/alecthomas/units master
	cloud.google.com/go/pubsub => cloud.google.com/go/pubsub master
	github.com/PaulARoy/azurestoragecache => github.com/PaulARoy/azurestoragecache master
)
