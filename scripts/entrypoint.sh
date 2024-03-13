#!/usr/bin/env sh

sshpass -p ${SSH_PASS} ssh -N -C -T -D 0.0.0.0:8080 -o StrictHostKeyChecking=no ${SSH_USER}@${SSH_HOST} -p ${SSH_PORT}
