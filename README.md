# Artem Borovik - Resume

This repository contains my resume in Markdown format and is automatically built into PDF and HTML formats using Pandoc and GitHub Actions.

## Building Locally

To build the resume locally, you will need to have [Pandoc](https://pandoc.org/installing.html) and a TeX distribution (like [TeX Live](https://www.tug.org/texlive/)) installed.

Run the following command to build both PDF and HTML versions:

```bash
make all
```

To clean up the built files:

```bash
make clean
```

## GitHub Actions

The repository is configured with a GitHub Actions workflow that automatically builds the resume on every push to the `main` or `master` branches. The resulting files are uploaded as artifacts.
