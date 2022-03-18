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
docker run -it --rm -v $PWD:/usr/src/myapp -v $HOME/.rport:/root ipython
```

If everything worked out, the Docker container will have generated 2 files:
- an executed version of the notebook (`ex.ipynb`)
- a custom-formatted, HTML report (`report.html`)

3. View results

```
open report.html
```


