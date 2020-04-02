heroku-buildpack-snowflake-odbc
===

## Usage
This requires [heroku-buildpack-apt](https://github.com/heroku/heroku-buildpack-apt) to run before
it, with the following in the Aptfile:


```
unix-odbc
unixodbc-dev <-- required for ruby-odbc gem
https://raw.githubusercontent.com/ignitionapp/heroku-buildpack-snowflake-odbc/master/snowflake-odbc.deb
```

Add buildpack

```
heroku buildpacks:add https://github.com/ignitionapp/heroku-buildpack-snowflake-odbc
```
