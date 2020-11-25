
# getting set up
pwd
cd
git config --global user.name "Bret Beheim"
git config --global user.email "beheim@gmail.com"
git config --global core.editor "nano -w"
git config --global core.autocrlf input # for mac/linux
git config --global core.autocrlf true # for windows
git config --global core.autocrlf input # for mac/linux
git config --list

# initializing our project
pwd
cd ~/Desktop
pwd
mkdir "gapminder analysis"
rm -r "gapminder analysis"
mkdir gapminder-analysis
cd gapminder-analysis
pwd
git status
git init
git status
ls
ls -a
nano README.txt
git status
history
git status
git add README.txt
git status
git commit -m "first commit of gapminder-analysis; added README.txt"

# adding data for second commit
git status
git log
git log --oneline
nano README.txt
mkdir data
git status
git add README.txt
git status
git add data/gapminder_data.csv
git status
git commit
git log
git status
git commit
git log

# modifying README.txt for third commit
nano README.txt
git status
git add *.txt
git status
git commit -m "third commit with another modification to README.txt"
git log
git status
git log -- README.txt
git log -- data/gapminder_data.csv
git checkout 3f530ca README.txt
git status
nano README.txt
git status
git checkout HEAD README.txt
git status
nano README.txt
nano data/gapminder_data.csv

# adding some dummy PDF files using touch
mkdir drafts
cd drafts
touch rough.pdf
ls
ls -l
touch plot1.pdf
touch plot2.pdf
ls -l
cd ..
git status
git add drafts/
git status
git rm drafts/plot1.pdf
git reset drafts/plot1.pdf
git status
git reset drafts/
git status
git log --oneline
git status
git commit
git log --oneline

# adding an 'unfortunate' change to README.txt
nano README.txt
cat README.txt
git status
git add README.txt
git status
git commit -m "added a fourth feature to my README.txt :)"

# fixing the change with another commit
git log --oneline
cat READ.txt
cat README.txt
git status
git log --oneline

# solution 1 accidentally creates a 'detached HEAD' state (no longer on branch)
git checkout 2901ddc
git status
cat README.txt
git checkout master # this gets me back to the branch I was on

# solution 2: just checkout the one file I want to fix
git log --oneline
git checkout HEAD~1 README.txt
git status
cat README.txt
git commit -m "reverting to commit 2901ddc README.txt because of bug introduced"
git log --oneline
git blame README.txt # yes this is a real command!

# branch naviation and adding a .gitignore
git branch
git status
ls drafts
nano .gitignore
ls
ls -a
git status
git add .gitignore
git status
git commit -m "added a .gitignore"

# creating a remote and enabling a collaborator to use it
git status
git log --oneline
git remote -v
git remote add origin https://github.com/babeheim/gapminder-analysis.git
git branch -M main
git push -u origin main

git pull origin main # woops, I forgot to do this in class, here's how to locally pull down my collaborator's changes

# saving this file :)
cd ~/Desktop
history > day3_git_intro.sh
