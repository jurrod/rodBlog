# this is jarrod masarik's fucking code, take it at ur own risk cause its probably shit anyways Rofl
# anyways, lets import the OS
# we are trying to rename files for auto-scripted posting of images i take, and what not
# might use openAI a few times moving forward...anyways..

import sys # can also use this to get command line arguments !
import os
from datetime import date

# we need to get the data in a neat format! (YYYY-MM-DD)
currDate = date.today()
#print(currDate) # this is just a check
#print(type(str(currDate))) # this is also a simple check of type (for string concatenation)

# get a little input so we can name our post
titlePost = input("Please enter the title of today's post: ")

# lets make our fileName
outFileName = ""+(str(currDate)+"-"+titlePost+".md")
#print(outFileName)

# parse our directory 
images = os.listdir("../assets/img") # 1-D array containg fileNAMES! (not file objects, different thing entirely!)
print("")
i = 0
for i in range(0, len(images)):
    print(str(i)+" : "+str(images[i]))
print("")
imageName = int(input("Pick an image(integer) to tie to your post: "))
currImage = images[imageName]
#print(type(currImage))
#print(currImage)


# the format of a blog post! (we can concatenate an image onto this as well)
format = """---
layout: post
title: """+str(titlePost)+"""
author: "rod"
categories: documentation
tags: [documentation,sample]
image: """+str(currImage)+"""
---

"""

# final file format (needs output streamed to markdown(.MD) file right QUICK!)
# "YYYY-MM-DD-[BLOG_POST_TITLE].md"
#print("ready to upload/write to file directory")
fileOutput = open(outFileName, "w") # will write whatever in our format
fileOutput.write(format) # put our format header into our markdown file
print("")
comment = input("content: ")
fileOutput.write(comment)
print("*********************************************************************************************************************************************")
print("should be up!")