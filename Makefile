.PHONY: docs env env_remove
#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
PROJECT_NAME = infographic-challenge
ENV_NAME = infographic-challenge

#################################################################################
# COMMANDS                                                                      #
#################################################################################

## Build the documents using MkDocs
docs:
	conda run -n $(ENV_NAME) mkdocs build -f ./docsrc/mkdocs.yml -d ../docs

## Build and push documents to tower
docs_push:
	conda run -n $(ENV_NAME) mkdocs build -f ./docsrc/mkdocs.yml -d ../docs
	cp -r ./docs/* /Volumes/infographic_challenge

## Build the local environment from the environment file
env:
	conda env create -f environment.yml

## Make it easier to clean up the project when finished
env_remove:
	conda deactivate
	conda env remove -n $(ENV_NAME)
