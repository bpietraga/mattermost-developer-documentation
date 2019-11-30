module github.com/mattermost/mattermost-developer-documentation

go 1.12

replace (
	cloud.google.com/go/pubsub => cloud.google.com/go/pubsub v1.1.1-0.20191127231700-ca631683490e
	github.com/PaulARoy/azurestoragecache => github.com/PaulARoy/azurestoragecache v0.0.0-20170906084534-3c249a3ba788
	github.com/alecthomas/units => github.com/alecthomas/units v0.0.0-20190924025748-f65c72e2690d
	github.com/mattermost/mattermost-server => github.com/mattermost/mattermost-server v1.4.1-0.20191128050553-955f8c4e8ef8
	github.com/nicksnyder/go-i18n => github.com/nicksnyder/go-i18n v1.10.1
	gopkg.in/asn1-ber.v1 => github.com/go-asn1-ber/asn1-ber v1.3.2-0.20191121212151-29be175fc3a3
	golang.org/x/sys => golang.org/x/sys master
	github.com/golang/protobuf => github.com/golang/protobuf master
	github.com/google/uuid => github.com/google/uuid master
	github.com/hashicorp/yamux => github.com/hashicorp/yamux master
	gopkg.in/jcmturner/aescts.v1 => github.com/jcmturner/aescts master
)
