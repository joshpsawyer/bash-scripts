# bash-scripts
a collection of bash scripts to automate some common things, like initializing a git repo and provision a project directory structure. Contents include:

- ```gitinit``` is  a copy of https://github.com/chrissimpkins/scriptacular/tree/master/version-control
- ```mkproj``` structures a directory with guiding principals from [Good Enough Practices in Scientific Computing](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005510).
  - only an ArcMap option exists currently, because of all the NRS522 maps

# Installation

This requires bash access. Mac and Unix machines will have it natively; Windows users should install Git and use Git Bash or similar.

1. Clone the repo to your local machine
2. In a bash window, open either ```~/.bash_profile``` or ```~/.bash_rc``` (or create if necessary) and paste the following:
    ```bash
    BASH_SCRIPT_DIRECTORY="/c/proj/code/bash-scripts"

    alias gitinit="$BASH_SCRIPT_DIRECTORY/gitinit.sh"
    alias mkproj="$BASH_SCRIPT_DIRECTORY/mkproj.sh"
    ```
3. Change the value of ```BASH_SCRIPT_DIRECTORY``` to where you've cloned the repo.
4. Alternatively, change the names of the alias to whatever you'd like.
5. Either reopen bash or type:
    ```bash
    source ~/.bash_profile
    ```