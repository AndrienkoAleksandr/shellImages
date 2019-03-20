#!/bin/sh
#
# Copyright (c) 2018-2018 Red Hat, Inc.
# This program and the accompanying materials are made
# available under the terms of the Eclipse Public License 2.0
# which is available at https://www.eclipse.org/legal/epl-2.0/
#
# SPDX-License-Identifier: EPL-2.0
#
# Contributors:
#   Red Hat, Inc. - initial API and implementation
#

set -x

export USER_ID=$(id -u)
export GROUP_ID=$(id -g)

# Set bash like default shell
NEW_PASSWD_CONTENT=$(cat /etc/passwd | sed "s/\(.*:.*:${USER_ID}:${GROUP_ID}:.*:.*:\).*/\1\/usr\/bin\/rc/")
echo "${NEW_PASSWD_CONTENT}" > /etc/passwd
