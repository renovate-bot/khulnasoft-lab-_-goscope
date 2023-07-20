package goscope

import (
	"github.com/khulnasoft-labs/goscope/pkg/image"
)

type config struct {
	Registry           image.RegistryOptions
	AdditionalMetadata []image.AdditionalMetadata
	Platform           *image.Platform
}
