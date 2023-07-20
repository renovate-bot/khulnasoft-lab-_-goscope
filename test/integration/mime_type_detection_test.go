package integration

import (
	"context"
	"testing"

	"github.com/scylladb/go-set/strset"
	"github.com/stretchr/testify/assert"

	"github.com/khulnasoft-goscope/goscope"
	"github.com/khulnasoft-goscope/goscope/pkg/imagetest"
)

func TestContentMIMETypeDetection(t *testing.T) {
	request := imagetest.PrepareFixtureImage(t, "docker-archive", "image-simple")

	img, err := goscope.GetImage(context.TODO(), request)

	assert.NoError(t, err)
	t.Cleanup(goscope.Cleanup)

	pathsByMIMEType := map[string]*strset.Set{
		"text/plain": strset.New("/somefile-1.txt", "/somefile-2.txt", "/really", "/really/nested", "/really/nested/file-3.txt"),
	}

	for mimeType, paths := range pathsByMIMEType {
		refs, err := img.SquashedSearchContext.SearchByMIMEType(mimeType)
		assert.NoError(t, err)
		assert.NotZero(t, len(refs), "found no refs for type=%q", mimeType)
		for _, ref := range refs {
			if !paths.Has(string(ref.RealPath)) {
				t.Errorf("unable to find %q", ref.RealPath)
			}
		}
	}

}
