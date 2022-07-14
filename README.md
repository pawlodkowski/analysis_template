# Analysis: <Name>

_Note_: Below are the instructions for using this template. Once cloned, obviously remove these
notes and replace it with the appropriate documentation. See previous analyses / reports for examples.

This template is meant to go hand-in-hand with the 
[nbconvert flowkey template](https://github.com/pawlodkowski/nbconvert_flowkey), which styles the exported HTML report. 
    
## Usage:
    
```bash
git clone --depth=1 --branch=main git@github.com:pawlodkowski/analysis_template.git && \
rm -rf ./analysis_template/.git
```
    
### How to Run Entire Script at Once and Generate Report

If you want to run the code as a single script — _e.g. if you're not so 
interested in the code and simply want to generate the latest version of the report_ — then 
the recommended way to do this would be using the prepared Docker image.

1. Build the custom Docker image

```bash
docker build -t ipython .
```

2. Run the Docker container

```bash
make report
```

If everything worked out, the Docker container will have generated 2 files:
- an executed version of the notebook, overwriting the original file (`analysis.ipynb`)
- a custom-formatted, HTML report (`report.html`)

3. View results

```
open report.html
```
    
### How to Run Notebook Interactively

Rather than running all the code at once, you may be more interested in running the code in the notebook 
interactively, step-by-step (_e.g. if you want to explore the code yourself and get a better idea of 
what's going on "under the hood"_). In this case, it is advised to run the notebook locally rather than through Docker.

1. Make sure you have the dependencies installed

```bash
pip install -r requirements.txt
```

_alternatively, if you're using conda_:

```bash
conda install --file requirements.txt
```

2. Make sure you have Jupyter Lab* installed

Refer to the documentation for installation (https://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html#installation), e.g. 
either through `pip` or `conda`.

*_You could also use Jupyter Notebook, but I personally prefer Jupyter Lab._

3. Launch Jupyter Lab

```bash
jupyter lab
```

4. Navigate to the notebook and run cells

The file is `analysis.ipynb`.


