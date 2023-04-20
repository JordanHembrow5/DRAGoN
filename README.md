# DRAGoN Summary
The DRAGoN algorithm is a series of Matlab scripts which segments a filamentous network from a fluorescence microscopy image (or stack of images). The centreline of the network is estimated and replaced with labelled pixel-thick lines, which are then analysed to provide several mathematical, physical and biological properties.

The scripts are split up in such a way that they may be useful by themselves, or perhaps as a subset. This also enables the Matlab help function to quickly provide a summary of how each script works.

To learn about the development, testing, and outcomes, please read our paper here: [AUTOMATIC EXTRACTION OF ACTIN NETWORKS IN PLANTS](https://doi.org/10.1101/2023.01.18.524528 "preprint link")



**Table of Contents**

[TOCM]

[TOC]

# Requirements
### File Requirements
You will need the image stack and the mask in the given path or the code will not run. ***Ensure their names match the filenames in Dragon.m***

**Default Input Filenames:**
```
raw_stack_filename  = "actin_stack.tif";
mask_filename         = "mask.tif";
```

**Default Output Filenames:**
```
projection_filename = "actin_original.tif";
variables_filename  = "netProps.mat";
```


### MATLAB Requirements
**Toolboxes:**
  + Image Processing Toolbox
  + Statistics and Machine Learning Toolbox

Minimum Version: r2018b
***Recommended Version: r2022a***

#### Compatibility Details
For function compatibility *and* consistent behaviour, you will need *at least* MATLAB r2018b as well as the **Image Processing Toolbox** and the **Statistics and Machine Learning Toolbox**. Previous versions may run, but algorithm behavioural changes occurred and results may be sub-optimal. Tested and developed on r2019a, with some recent testing on r2022a also working.

# DRAGoN Function Information
```
@input: path - the file path in which all of the data resides
@output net_props - a structure containing all of the data extracted
		    from the image stack

Note that the input filenames are stored as variables to make things simple to change. 

Default Filenames:
    raw_stack_filename  = "actin_stack.tif";
    projection_filename = "actin_original.tif";
    mask_filename       = "mask.tif";
    variables_filename  = "netProps.mat";

The ratio between pixel width and voxel depth is specified by z_scale so will depend on your microscopy setup
```

### Algorithm Parameters and Behaviour
All of the parameters are stored in *getParams.m* with a description of the effect of each one. prctile_thresh is the most sensitive and will likely need tweaking for your setup. z_scale is the ratio between the size of your pixel in 2D and the distance between your stacked images, make sure to adjust this where needed.


# DRAGoN Tutorial
TODO: Fill this up when the example images are added and tested
