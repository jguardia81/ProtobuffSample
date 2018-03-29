TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += link_pkgconfig

SOURCES += main.cpp
PKGCONFIG += protobuf
PROTO_FILES += $$files(*.proto)

proto_compiler.commands = protoc --cpp_out=${QMAKE_FILE_IN_PATH} --proto_path=${QMAKE_FILE_IN_PATH} ${QMAKE_FILE_IN}
proto_compiler.input = PROTO_FILES
proto_compiler.output = ${QMAKE_FILE_IN_PATH}/${QMAKE_FILE_BASE}.pb.cc
proto_compiler.variable_out = GENERATED_SOURCES

#proto_compiler.depends = ${QMAKE_FILE_BASE}.pb.cc
QMAKE_EXTRA_COMPILERS += proto_compiler
