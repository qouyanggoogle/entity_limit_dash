#!/bin/bash

###########################################################################
#
#  Copyright 2020 Google LLC
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#
###########################################################################


if [ -d "${PWD}/install" ]; then
  THIS_DIR=$PWD

  echo ""
  echo "Welcome To StarThinker ( Google gTech )"
  echo ""
  echo "This utility will help you set up and manage long running recipes."
  echo "If this is your first time running this script, select Full Setup."
  echo ""

  if [ ! -z "${BASH}" ]; then

    echo ""
    echo "------------------------------------------------------------------------------"
    echo "This is a reference implementation only and not warrantied by Google."
    echo ""

    read -p "Do you acknowledge and wish to proceed (y/n)? " -n 1 -r
    echo ""

    if [[ $REPLY =~ ^[Yy]$ ]]; then

      source ${THIS_DIR}/install/config.sh;

      echo ""
      echo "----------------------------------------------------------------------"
      echo "gTech StarThinker"
      echo "----------------------------------------------------------------------"
      echo ""

      main_done=0
      main_options=("Please Quit: q")

      while (( !main_done ))
      do
        echo "----------------------------------------------------------------------"
        echo "Main Menu"
        echo "----------------------------------------------------------------------"
        echo ""

        PS3='Your Choice ( q = Quit ): '
        select main_option in "${main_options[@]}"; do
          case $REPLY in
            q) main_done=1; break;;
            *) echo "What's that?" ;;
          esac
        done
        echo ""
      done

    fi

  else

    echo ""
    echo "This script require a bash shell."
    echo "Run: /bin/bash"
    echo "Then run this script again."
  echo ""

  fi

else

  echo ""
  echo "Directory starthinker not found."
  echo "This utility must be run from the directory containing the starthinker directory."
  echo "Please change directories and try again."
  echo ""

fi
