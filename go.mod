module github.com/khulnasoft-labs/goscope

go 1.18

require (
	github.com/GoogleCloudPlatform/docker-credential-gcr v2.0.5+incompatible
	github.com/awslabs/amazon-ecr-credential-helper/ecr-login v0.0.0-20220517224237-e6f29200ae04
	github.com/becheran/wildmatch-go v1.0.0
	github.com/bmatcuk/doublestar/v4 v4.0.2
	github.com/containerd/containerd v1.7.0
	github.com/docker/cli v20.10.27+incompatible
	github.com/docker/docker v20.10.24+incompatible
	github.com/gabriel-vasile/mimetype v1.4.0
	github.com/go-test/deep v1.0.8
	github.com/google/go-cmp v0.5.9
	github.com/google/go-containerregistry v0.13.0
	github.com/hashicorp/go-multierror v1.1.1
	github.com/logrusorgru/aurora v2.0.3+incompatible
	github.com/mitchellh/go-homedir v1.1.0
	github.com/pelletier/go-toml v1.9.5
	github.com/pkg/errors v0.9.1
	// pinned to pull in 386 arch fix: https://github.com/scylladb/go-set/commit/cc7b2070d91ebf40d233207b633e28f5bd8f03a5
	github.com/scylladb/go-set v1.0.3-0.20200225121959-cc7b2070d91e
	github.com/sergi/go-diff v1.2.0
	github.com/spf13/afero v1.6.0
	github.com/stretchr/testify v1.8.4
	github.com/sylabs/sif/v2 v2.8.1
	github.com/sylabs/squashfs v0.6.1
	golang.org/x/crypto v0.17.0
)

require (
	github.com/Microsoft/go-winio v0.6.0 // indirect
	github.com/aws/aws-sdk-go-v2 v1.7.1 // indirect
	github.com/aws/aws-sdk-go-v2/config v1.5.0 // indirect
	github.com/aws/aws-sdk-go-v2/credentials v1.3.1 // indirect
	github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.3.0 // indirect
	github.com/aws/aws-sdk-go-v2/internal/ini v1.1.1 // indirect
	github.com/aws/aws-sdk-go-v2/service/ecr v1.4.1 // indirect
	github.com/aws/aws-sdk-go-v2/service/ecrpublic v1.4.1 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.2.1 // indirect
	github.com/aws/aws-sdk-go-v2/service/sso v1.3.1 // indirect
	github.com/aws/aws-sdk-go-v2/service/sts v1.6.0 // indirect
	github.com/aws/smithy-go v1.6.0 // indirect
	github.com/containerd/stargz-snapshotter/estargz v0.12.1 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	// docker/distribution for https://github.com/advisories/GHSA-qq97-vm5h-rrhg
	github.com/docker/distribution v2.8.2+incompatible // indirect
	github.com/docker/docker-credential-helpers v0.7.0 // indirect
	github.com/docker/go-connections v0.4.0 // indirect
	github.com/docker/go-units v0.5.0 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	github.com/klauspost/compress v1.16.4 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.16 // indirect
	github.com/mgutz/ansi v0.0.0-20200706080929-d51e80ef957d // indirect
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/opencontainers/image-spec v1.1.0-rc2.0.20221005185240-3a7f492d3f1b // indirect
	github.com/pierrec/lz4/v4 v4.1.15 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/sirupsen/logrus v1.9.3 // indirect
	github.com/stretchr/objx v0.5.0 // indirect
	github.com/therootcompany/xz v1.0.1 // indirect
	github.com/ulikunitz/xz v0.5.10 // indirect
	github.com/vbatts/tar-split v0.11.2 // indirect
	golang.org/x/net v0.10.0 // indirect
	golang.org/x/oauth2 v0.6.0 // indirect
	golang.org/x/sync v0.1.0 // indirect
	golang.org/x/sys v0.15.0 // indirect
	golang.org/x/term v0.15.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto v0.0.0-20230403163135-c38d8f061ccd // indirect
	google.golang.org/grpc v1.54.0 // indirect
	google.golang.org/protobuf v1.30.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

require (
	github.com/khulnasoft-labs/go-logger v0.0.0-20230719191807-d7be2e5a3d3e
	github.com/khulnasoft-labs/go-testutils v0.0.0-20230719194444-dbede2dde3ef
	github.com/sulaiman-coder/goeventbus v0.0.0-20230711062328-f3bebf6c2ec5
	github.com/sulaiman-coder/goprogress v0.0.0-20230711063359-b1309e6945b1
)

require (
	cloud.google.com/go/compute v1.19.0 // indirect
	cloud.google.com/go/compute/metadata v0.2.3 // indirect
	github.com/golang/mock v1.6.0 // indirect
	github.com/kr/pretty v0.2.1 // indirect
	golang.org/x/mod v0.10.0 // indirect
	golang.org/x/tools v0.8.0 // indirect
)
