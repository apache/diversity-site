# Apache Diversity and Inclusion Committee Website Repo 

The `asf-site` branch of this repo creates the https://diversity.apache.org/ website.

## Requirements

### macOS

Using Homebrew:

```bash
brew install yarn rbenv
```

### Others

Install nodejs, yarn, rbenv, and ruby.

## Setup

For convenience, an rbenv configuration file is included to vendor the version of Ruby being used.
Run `rbenv init` to see instructions on how to set that up for your shell.
Next, run the following command to install Bundler:

```bash
gem install bundler
```

Then run the following to run Jekyll locally in development mode:

```bash
./rake.sh
```

To only build the site, run:

```bash
JEKYLL_ENV=production ./rake.sh build
```

These files would typically be committed to the `asf-site` branch either by a committer or by CI.
