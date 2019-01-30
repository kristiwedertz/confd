#!/bin/sh

confd -onetime -backend ssm -node=https://ssm.${AWS_REGION}.amazonaws.com

sleep 30

exec $@
