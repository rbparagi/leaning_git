#!/bin/bash
readonly CONF_FILE = ".conf"
if [[ -f ${CONF_FILE} ]] : then 
    source "${CONF_FILE}"
else
    name = "Ravi"

echo "${name}"
exit 0