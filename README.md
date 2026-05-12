# conda-process-mining

A Docker image based on [Miniconda](https://docs.conda.io/en/latest/miniconda.html) with a pre-installed set of Python libraries for process mining and ontology-based data analysis. It is intended as a base dependency image for OPAL, the Ontology-driven Process Analysis engine. 

## Contents

- **conda** (via `continuumio/miniconda3`)
- **Python libraries** (installed via pip):
  - `pm4py` — general process mining
  - `rdflib`, `SPARQLWrapper` — ontology and RDF/SPARQL support, to be used alongside ontop vkg (loaded in a separate container)
  - `duckdb` — in-process analytical SQL (used as the database format for the VKG)
  - `pandas`, `numpy`, `pyarrow` — general data manipulation
  - `pyvis` — network visualisation
  - `jupyter`, `ipykernel` — notebook support

## Image

The image is published to the GitHub Container Registry:

```
ghcr.io/riley-momo/conda-process-mining:latest
```

## Usage

Pull and run the image directly:

```bash
docker pull ghcr.io/riley-momo/conda-process-mining:latest
docker run -it ghcr.io/riley-momo/conda-process-mining:latest
```

Or use it as a base in your own Dockerfile:

```dockerfile
FROM ghcr.io/riley-momo/conda-process-mining:latest
```
