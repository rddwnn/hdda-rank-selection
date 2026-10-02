# HDDA rank selection

Research project for the High-Dimensional Data Analysis (HDDA) course on
selecting the number of PCA components under different noise structures.

The study will compare GabrielRegularised + Wmax with ordinary Gabriel + Wmax
on controlled synthetic data, examining how noise distribution and unequal
noise variance affect rank-selection accuracy.

This repository will contain the Python implementations, experiment
configurations, data-generation and download scripts, reproducible results,
figures, and research paper. The proposal is the first project document.
Currently, only the proposal and the initial `uv` package scaffold are present;
the methods and experiments have not been implemented.

## Repository layout

- `src/hdda_rank_selection/`: Python package for the research code.
- `pyproject.toml`, `uv.lock`: Python environment managed with `uv`.
- `docs/proposal/`: LaTeX source for the research proposal.
- `docs/references.bib`: shared bibliography for project documents.
- `build/`: ignored generated document output.

Experiment code, data handling, results and the full paper will be added as the
research progresses. Synthetic data will be reproducible from explicit seeds;
large generated datasets will not be committed.

## Python environment

```sh
uv sync
```

Run project Python commands through `uv run`. LaTeX uses its own system
toolchain and is independent of the Python environment.

## Build the proposal

Install a TeX distribution providing `latexmk`, `pdflatex`, BibTeX, `natbib`,
`geometry`, `amsmath`, `amssymb`, `microtype` and `hyperref`, then run:

```sh
make proposal
```

The PDF is written to `build/proposal/main.pdf`. Edit
`docs/proposal/main.tex`; bibliography entries are in `docs/references.bib`.
Run `make clean` to remove generated LaTeX output.

The root `.latexmkrc` contains shared settings for research documents; each
document's build target selects its source and output directory. The proposal
also supports `latexmk main.tex` from `docs/proposal`. Both this command and
`make proposal` write all generated files to `build/proposal/`.
For editor builds from the document directory, select a **latexmk**
recipe without a separate output-directory override. A single `pdflatex` pass
does not run BibTeX or resolve citations; `latexmk` handles all required passes.
