postmodern Cookbook
===================

Installs the Postmodern gem for assisting with PostgreSQL
maintenance tasks.

See [Postmodern](https://github.com/wanelo/postmodern)'s documentation for more info.

## Usage

This cookbook is intended as a very minimal dependency to wrap up
installing Postmodern. Configuration of various Postmodern utilities
and tasks should be done in a wrapper cookbook local to your
infrastructure.

Add this cookbook as a dependency of your cookbook, and then:

```ruby
include_recipe 'postmodern'
```

Then your cookbook can drop a `postmodern_archive.local` or
`postmodern_restore.local` somewhere in the PATH of a system
to do WAL archiving.

Add a crontab for `postmodern vacuum` or `postmodern freeze` to
regularly clean up your Postgres database.


## Releasing new versions

New versions can be publicly released using the `emeril` gem, which
is included in the development Gemfile.

```bash
rake release
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

