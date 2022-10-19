# lets autoPost all the polaroids found in this file..
from mimetypes import init
import sys
import os
from datetime import date

currDate = date.today();
# currDate has a shit ton of attributes with it lol
currDate = date.timetuple(currDate);

# get all our polaroid source images
images = os.listdir("./src") # 1D string array
# text to write to open file
template = """---
layout: default
title: polaroid
permalink: /polaroid
---
<!-- add our super special image!-->
<img src="../assets/png/rodPolaroid.png" alt="rodTitle" style="max-width:200px;">

"""
# parse polaroid directory and begin writing to static markdown


# open fileoutput
fileOutput = open("../../../pages/polaroid.md", "w")
# write
fileOutput.write(outputText)
print("*********************************************************************************************************************************************")
print("should be up!")