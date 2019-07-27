# Apache Diversity and Inclusion Committee Website Repo 

The `asf-site` branch of this repo creates the https://diversity.apache.org/ website.

## Requirements

### macOS

Using Homebrew:

```bash
brew install yarn rbenv
```

### Others

Install nodejs, yarn, and rbenv.

## Setup

For convenience, an rbenv configuration file is included to vendor the version of Ruby being used.
Run `rbenv init` to see instructions on how to set that up for your shell.
Next, run the following command to install Bundler:

```bash
gem install bundler
```

Once these tools are installed, run the following to install our Ruby and JavaScript dependencies.

```bash
bundle exec rake install
```

Then you can run `bundle exec rake` or `bundle exec rake serve` to run Jekyll locally, or `JEKYLL_ENV=production bundle exec rake build` to simply compile the site into the `_site/` directory for deployment purposes.
These files would typically be committed to the `asf-site` branch either by a committer or by CI.
