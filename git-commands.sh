# Check Version of git installed
git --version

# Add Global Name to git
git config --global user.name "abidkhan03"

# Add Global Email id to git
git config --global user.email "abidkhan42935@gmail.com"

# Check if names are added
git config --list

# Get Help with configurations
git help config   / git config --help


# check status of current git repository 
git status

# add git file
git init 

# Check if status updated
git status

# List all files (Including Hidden Files)
ls -la

# Remove Directory
rm -rf .git

# Add files and folders to be ignored by Git 
touch .gitignore

# Add Specific file
git add .gitignore

# Add All Files in current Directory
git add -A

# Remove Specific file Directory
git reset .gitignore

# Remove all
git reset

# Add Commit in staging area
git commit -m "First Commit"

# Get log (history) of commits
git log

# Get log in one line
git log --oneline

# Clone from one url/directory to other
git clone <url> <where to close>

# Clone from other directory to current directory
git clone ../file .
 
# Clone from url to current directory 
git clone https://github.com/ali-meesam/remote_repo.git .

# List information of repo
git remote -v

# See all of the branches
git branch -a

# Show all Changes since previous commit 
git diff

# Add All into staging
git add -A    /  git add .

# Check if their is any changes by other developer
git pull origin developer


# Push branch to remote repostory
git push origin developer

#  save name of repostary, Helps us to use git pull, git push only commands
git push -u origin developer 

# Show all available branches
git branch       /   git branch -a 

# Make branch Develop 
git branch develop 

# Alternate way to Make New branch Named Develop
git checkout -b develop 

# Move to develop branch
git checkout develop 

# Add to Remote Branch
git remote add origin https://github.com/ali-meesam/Tester.git


# Push to master
git checkout master

git pull origin master

# Merge branch
git branch --merged


# Merge develop to master branch
git merge develop 

# push to remote repository 
git push origin master  

git branch --merged

# delete branch locally 
git branch -d develop

# List all branches
git branch -a 

# Delete branch remotely
git push origin --delete develop 


# Example(copied from git workflow)
# _______

# Make new branch named Subtract of subtract function

$ git branch subtract

# Move to substract branch
$ git checkout subtract

$ git status

$ git add -A

$ git commit -m "Subtract function added"

$ git push -u origin subtract

# Merging branch to master

$ git checkout master

$ git pull origin master

$ git merge subtract

$ git push origin master

$ git branch -d subtract

$ git branch -d develop

$ git push origin --delete develop

#Commet syntax Used by Datum Brain
#_________________________________

# ticket number
# [ABC-1]

# Title
# Title should be Written Like This 

# Things Changed
# * First thing Done
# * Second thing done
# * Third thing done


# GIT-FLOW
# __________

# Install Git Flow on OSX
  brew install git-flow

# Install GitFlow in Current repo
git flow init

# 1. Master branch

# 2. Develop branch  
   # It save all the changes by developers
   
# 3. Feature Branch 
  #* start Feature branch
     $ git flow feature start feature_branch  

  #*  1.
      $ git checkout develop
        
     # Merge Feature branch to develop branch
  #*   2.
       $ git merge feature_branch 

     
#* finish feature branch
    $ git flow feature finish feature_branch

# 4. Release branch
#   * After completing features merge into release branch
#   * Do not update release branch after its completed
#   * Only bug fix and documentation
  
    # Without git-flow
     git checkout develop 
     
     git flow feature finish feature_branch 

     git checkout master 
     git merge release/0.1.0 

    
    # With Git-flow

   $ git flow release start 0.1.0 
   # Switched to a new branch 'release/0.1.0'
	
   $ git flow release finish '0.1.0' 

# 5. Hotfix Branches
 #*
    # Without git flow
    git checkout master 
    git checkout -b hotfix_branch 
  #*
    git checkout master
    git merge hotfix_branch
    git checkout develop
    git merge hotfix_branch
    git branch -D hotfix_branch
    
    # With git Flow
 #*
    $ git flow hotfix start hotfix_branch
    
    $ git flow hotfix finish hotfix_branch

    # Example without git flow

    git checkout master
    git checkout -b develop
    git checkout -b feature_branch
    
    # work happens on feature branch
    git checkout develop
    git merge feature_branch
    git checkout master
    git merge develop
    
    git branch -d feature_branch 

    # Example with git branch

    git checkout master
    git checkout -b hotfix_branch
    
    # work is done commits are added to the hotfix_branch
    git checkout develop
    git merge hotfix_branch
    git checkout master
    git merge hotfix_branch
