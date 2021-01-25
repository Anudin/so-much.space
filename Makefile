# TODO No handling of upstream changes, at least the deploy target should execute a git pull before building
# TODO I make some assumptions about the environment, like a properly configured git
# TODO This could do a whole lot more, like image optimization

# === PREAMBLE START
# See https://tech.davis-hansson.com/p/make/
SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

ifeq ($(origin .RECIPEPREFIX), undefined)
  $(error This Make does not support .RECIPEPREFIX. Please use GNU Make 4.0 or later)
endif
.RECIPEPREFIX = >
# === PREAMBLE END

# This assumes user or organization pages, see jekyll / GitHub documentation
GITHUB_ACCOUNT = Anudin
REMOTE_DEPLOY = https://github.com/$(GITHUB_ACCOUNT)/$(GITHUB_ACCOUNT).github.io.git
# Build output directory, make sure this is in your .gitignore
BUILD_DIR = _gh_pages

Gemfile.lock:
> bundle install

.DEFAULT_GOAL :=
.PHONY: serve
serve: Gemfile.lock
> bundle exec jekyll serve

$(BUILD_DIR):
> git clone $(REMOTE_DEPLOY) $(BUILD_DIR)
> touch $@

.PHONY: prepare-build-dir
prepare-build-dir:
# Remove previous build output, leftover empty directories are not a problem since git doesn't keep them
> -cd $(BUILD_DIR) && \
  find . -not \( -path "./.git" -prune \) -type f -exec rm -rf {} +

.PHONY: build
build: Gemfile.lock | $(BUILD_DIR) prepare-build-dir
# Use a temporary directory to avoid getting our deployment repository overwritten by jekyll build
> bundle exec jekyll build -d $(BUILD_DIR)/.tmp/
> rsync -a $(BUILD_DIR)/.tmp/ $(BUILD_DIR)
> rm -r $(BUILD_DIR)/.tmp

.PHONY: deploy
deploy: | build
# See https://stackoverflow.com/questions/5694389/get-the-short-git-version-hash
> $(eval HASH:=$(shell git rev-parse --short HEAD))
> cd $(BUILD_DIR)
> git add .
# Use HEAD commit hash of the content repo as the commit message for the deployment repo, eases tracking of changes
> git commit -m '$(HASH)'
> git push
