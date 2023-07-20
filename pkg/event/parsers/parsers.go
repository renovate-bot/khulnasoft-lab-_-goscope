package parsers

import (
	"fmt"

	"github.com/sulaiman-coder/goeventbus"
	"github.com/sulaiman-coder/goprogress"

	"github.com/khulnasoft-goscope/goscope/pkg/event"
	"github.com/khulnasoft-goscope/goscope/pkg/image"
	"github.com/khulnasoft-goscope/goscope/pkg/image/docker"
)

type ErrBadPayload struct {
	Type  eventbus.EventType
	Field string
	Value interface{}
}

func (e *ErrBadPayload) Error() string {
	return fmt.Sprintf("event='%s' has bad event payload field='%v': '%+v'", string(e.Type), e.Field, e.Value)
}

func newPayloadErr(t eventbus.EventType, field string, value interface{}) error {
	return &ErrBadPayload{
		Type:  t,
		Field: field,
		Value: value,
	}
}

func checkEventType(actual, expected eventbus.EventType) error {
	if actual != expected {
		return newPayloadErr(expected, "Type", actual)
	}
	return nil
}

func ParsePullDockerImage(e eventbus.Event) (string, *docker.PullStatus, error) {
	if err := checkEventType(e.Type, event.PullDockerImage); err != nil {
		return "", nil, err
	}

	imgName, ok := e.Source.(string)
	if !ok {
		return "", nil, newPayloadErr(e.Type, "Source", e.Source)
	}

	pullStatus, ok := e.Value.(*docker.PullStatus)
	if !ok {
		return "", nil, newPayloadErr(e.Type, "Value", e.Value)
	}

	return imgName, pullStatus, nil
}

func ParseFetchImage(e eventbus.Event) (string, progress.StagedProgressable, error) {
	if err := checkEventType(e.Type, event.FetchImage); err != nil {
		return "", nil, err
	}

	imgName, ok := e.Source.(string)
	if !ok {
		return "", nil, newPayloadErr(e.Type, "Source", e.Source)
	}

	prog, ok := e.Value.(progress.StagedProgressable)
	if !ok {
		return "", nil, newPayloadErr(e.Type, "Value", e.Value)
	}

	return imgName, prog, nil
}

func ParseReadImage(e eventbus.Event) (*image.Metadata, progress.Progressable, error) {
	if err := checkEventType(e.Type, event.ReadImage); err != nil {
		return nil, nil, err
	}

	imgMetadata, ok := e.Source.(image.Metadata)
	if !ok {
		return nil, nil, newPayloadErr(e.Type, "Source", e.Source)
	}

	prog, ok := e.Value.(progress.Progressable)
	if !ok {
		return nil, nil, newPayloadErr(e.Type, "Value", e.Value)
	}

	return &imgMetadata, prog, nil
}

func ParseReadLayer(e eventbus.Event) (*image.LayerMetadata, progress.Monitorable, error) {
	if err := checkEventType(e.Type, event.ReadLayer); err != nil {
		return nil, nil, err
	}

	layerMetadata, ok := e.Source.(image.LayerMetadata)
	if !ok {
		return nil, nil, newPayloadErr(e.Type, "Source", e.Source)
	}

	prog, ok := e.Value.(progress.Monitorable)
	if !ok {
		return nil, nil, newPayloadErr(e.Type, "Value", e.Value)
	}

	return &layerMetadata, prog, nil
}
