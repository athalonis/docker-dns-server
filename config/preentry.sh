#!/bin/sh
/entrypoint.sh --api-key=$(cat /run/secrets/pdns_api_key) "$@"
