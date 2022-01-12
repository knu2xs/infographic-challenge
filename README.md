# infographic-challenge

Infographic Challenge resources.

## Getting Started

1 - Clone this repo.

2 - Create an environment with the requirements.
    
```
        > make env
```

3 - Explore - If you are more into Python, a good place to start is `jupyter lab` from the root of the project, and look in the `./notebooks` directory. If GIS is more your schtick, open the project `./arcgis/infographic-challenge.aprx`.

## Using Make - common commands

Based on the pattern provided in the [Cookiecutter Data Science template by Driven Data](https://drivendata.github.io/cookiecutter-data-science/) this template streamlines a number of commands using the `make` command pattern.

- `make env` - builds the Conda environment with all the name and dependencies from `environment.yml`.

- `make env_clone` - designed for environments using the default Conda instance installed with ArcGIS Pro. It is similar to `make env`, except this command clones the `arcgispro-py3` environment. Otherwise, it still installs the packages listed in `environment_dev.yml` and installs the local package using `pip` as described above.

- `make docs` - builds docs based on files in `./docsrc/source` and places them in `./docs`. This enables easy publishing in the master branch in GitHub.
