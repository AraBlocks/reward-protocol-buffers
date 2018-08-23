#!/usr/bin/env bash
protoc --js_out=import_style=commonjs,binary:./build/js/ --proto_path=./src/ messages.proto
protoc --cpp_out=./build/cpp/ --proto_path=./src/ messages.proto
protoc --csharp_out=./build/csharp/ --proto_path=./src/ messages.proto
protoc --java_out=./build/java/ --proto_path=./src/ messages.proto
protoc --objc_out=./build/objc/ --proto_path=./src/ messages.proto
protoc --php_out=./build/php/ --proto_path=./src/ messages.proto
protoc --python_out=./build/python/ --proto_path=./src/ messages.proto
protoc --ruby_out=./build/ruby/ --proto_path=./src/ messages.proto


