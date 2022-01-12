#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
PROJECT_NAME = infographic-challenge
ENV_NAME = infographic-challenge

#################################################################################
# COMMANDS                                                                      #
#################################################################################

## Build the local environment from the environment file
env:
	conda env create -f environment.yml

## Make it easier to clean up the project when finished
env_remove:
	conda env remove -n $(ENV_NAME)
