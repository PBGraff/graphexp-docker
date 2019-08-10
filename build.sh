#!/bin/sh

for TYPE in "original" "bootstrap"
do
	docker build --tag=graphexp-${TYPE}:1.0 ${TYPE}/
	docker tag graphexp-${TYPE}:1.0 pbgraff/graphexp-${TYPE}:1.0
	docker push pbgraff/graphexp-${TYPE}:1.0
done
