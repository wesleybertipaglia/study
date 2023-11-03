# Main Git Commands

## Initialize
Initializes a new Git repository in the current directory

    git init

## Clone a repository
Clones a remote repository to a local directory

    git clone <url>

## Add a remote repository
Adds a remote repository with the specified name and URL

    git remote add <name> <url>

## Add Files
Adds a file to the staging area, ready to be committed

    git add <file>

## Make a commit
Commits changes to the repository with a brief message describing the changes made

    git commit -m "commit message"

## Pushes changes to repository
Pushes changes to a remote repository

    git push

## Fetches and merges changes
Fetches and merges changes from a remote repository

    git pull

## Git Status
Shows the status of the current working directory and the staging area

    git status

## Git Log
Displays a log of all commits made in the repository

    git log

## List Branches
Lists all branches in the repository

    git branch

## Change the Branch 
Switches to the specified branch
    
    git checkout <branch>

## Merge branches
Merges the specified branch into the current branch
    
    git merge <branch>

## Remove files
Removes files from the Git repository and the working directory.

    git rm <filename>

## Restore files
Restore a deleted file in Git.

    git restore <filename>

    git restore --staged <filename>

    git restore <commit hash> <filename>

## Rename files
    git mv file1.txt file.txt

## Move files
    git mv file.txt new/file.txt

## Correct the last commit

    git commit --amend -m "Add file.txt"

## Rescue a file from the history

    git checkout <first 7 charachters from commit SHA-1> -- <file name>

## Come back in a history point

    git HEAD~5 // come back to the last 5 history point and make a new commit