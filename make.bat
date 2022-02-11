:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: LICENSING                                                                    :
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
:: Copyright 2020 Esri
::
:: Licensed under the Apache License, Version 2.0 (the "License"); You
:: may not use this file except in compliance with the License. You may
:: obtain a copy of the License at
::
:: http://www.apache.org/licenses/LICENSE-2.0
::
:: Unless required by applicable law or agreed to in writing, software
:: distributed under the License is distributed on an "AS IS" BASIS,
:: WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
:: implied. See the License for the specific language governing
:: permissions and limitations under the License.
::
:: A copy of the license is available in the repository's
:: LICENSE file.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: VARIABLES                                                                    :
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

SETLOCAL
SET PROJECT_DIR=%cd%
SET PROJECT_NAME=infographic-challenge
SET SUPPORT_LIBRARY = infographic_challenge
SET ENV_NAME=infographic-challenge

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: COMMANDS                                                                     :
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Jump to command
GOTO %1

:: Make documentation using Sphinx!
:docs
    ENDLOCAL & (
        CALL mkdocs build -f ./docsrc/mkdocs.yml -d ../docs
    )
	EXIT /B

:: Build the local environment from the environment file
:env
    ENDLOCAL & (

        :: Create new environment from environment file
        CALL conda env create -f environment.yml

        :: Install the local package in development (experimental) mode
        CALL python -m pip install -e .

        :: Activate the enironment so you can get to work
        CALL activate "%ENV_NAME%"

    )
    EXIT /B

EXIT /B
