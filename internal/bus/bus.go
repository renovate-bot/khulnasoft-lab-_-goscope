package bus

import "github.com/sulaiman-coder/goeventbus"

var publisher eventbus.Publisher
var active bool

func SetPublisher(p eventbus.Publisher) {
	publisher = p
	if p != nil {
		active = true
	}
}

func Publish(event eventbus.Event) {
	if active {
		publisher.Publish(event)
	}
}
