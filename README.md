# Apache Diversity and Inclusion Committee Website Repo 

The `asf-site` branch of this repo creates the https://diversity.apache.org/ website.

## Requirements

### macOS

Using Homebrew:

```bash
brew install yarn rbenv
```

### Others

Install nodejs, yarn, ruby (either using rbenv or a relatively recent version of ruby), and make.

## Setup

For convenience, an rbenv configuration file is included to vendor the version of Ruby being used.
This setup is optional, but it makes things simpler.
Run `rbenv init` to see instructions on how to set that up for your shell.
Next, run the following command to install Bundler:

```bash
gem install bundler
```

Once these tools are installed, run the following to install our Ruby and JavaScript dependencies.

```bash
make install
```

Then you can run `make` or `make serve` to run Jekyll locally, or `JEKYLL_ENV=production make build` to simply compile the site into the `_site/` directory for deployment purposes.
These files would typically be committed to the `asf-site` branch either by a committer or by CI.
