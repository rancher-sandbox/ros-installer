ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

build:
	go build -o ros-installer $(ROOT_DIR)/cmd/ros-installer

test:
	ginkgo -r ./pkg

deps:
	go install -mod=mod github.com/onsi/ginkgo/v2/ginkgo@latest
	go get github.com/onsi/gomega/...