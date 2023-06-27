#!/usr/bin/env bash
RUN_NAME="demo.im.rpc"
cd rpc-server -p output/bin
cp script/* output/
chmod +x output/bootstrap.sh
go build -o output/bin/${RUN_NAME}
# echo $IS_SYSTEM_TEST_ENV
# if [ "$IS_SYSTEM_TEST_ENV" != "1" ]; then
#    go build -o output/bin/${RUN_NAME}
# else
#    go test -c -covermode=set -o output/bin/${RUN_NAME} -coverpkg=./...
# fi