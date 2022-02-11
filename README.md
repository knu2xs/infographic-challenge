# infographic-challenge

Infographic Challenge resources.

## Getting Started

If you want to edit, please clone this project. The source for the documentation is located in `./docsrc/docs`. Most of the text is located in the `./docsrc/docs/index.md` file. If you want to see what your edits look like, you can either install `mkdocs` manually, or just build a Conda environment using `make env`. Once built, the command `make docs` will build the documentation and place the result in `./docs`. You can preview it by simply opening `./docs/index.htm`. It will open in your browser for you to preview.

## Using Make - common commands

- `make env` - builds the Conda environment with all the name and dependencies from `environment.yml`. This mostly consists of installing MkDocs so the docs will build.

- `make docs` - builds docs based on files in `./docsrc/source` and places them in `./docs`. This enables easy publishing in the master branch in GitHub.
