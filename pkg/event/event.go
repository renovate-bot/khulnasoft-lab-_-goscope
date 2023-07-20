package event

import (
	"github.com/sulaiman-coder/goeventbus"
)

const (
	PullDockerImage eventbus.EventType = "pull-docker-image-event"
	FetchImage      eventbus.EventType = "fetch-image-event"
	ReadImage       eventbus.EventType = "read-image-event"
	ReadLayer       eventbus.EventType = "read-layer-event"
)
