
# New Coders Guide: Running the New Schools Today website  

## Step 1: Downloading the new-schools-today project repository

#### Option 1: GitHub Desktop (Recommended!)
1. Download and install [Github Desktop](https://desktop.github.com/)
2. Open and sign in
3. Create a folder called ‘GitHub’ on your computer. We recommend that you put it in ‘Documents’.
4. In the new ‘GitHub’ folder create a folder titled ‘new-schools-today’
5. On the GitHub website, navigate to our [main page](https://github.com/hackforla/new-schools-today) of the repository.
6. On the right of the page, click on ‘Clone or download': you should now see a drop down menu. Click ‘Open in Desktop.' 
7. Once the GitHub desktop opens, click the ‘Choose..’ button and navigate to the ‘new-schools-today’ folder that you made earlier; Documents/GitHub/new-schools-today
8. Now PRESS ‘Clone’!

For more information, see "Cloning a repository from GitHub to GitHub Desktop.


#### Option 2: Terminal command prompt
1. Install Git: 
[Mac](https://git-scm.com/download/mac) /
[Windows](https://git-scm.com/download/win) / 
[Linux](https://git-scm.com/download/linux)
2. Open Terminal or command prompt
3. Use the cd command to Navigate to where you want to keep your cloned directory by typing
`cd Desktop`
4. If you don’t have one already, make a GitHub Directory by using 
`mkdir GitHub`
5. Change directories into the GitHub directory:
`cd GitHub`
6. Create the new-schools-today directory
`mkdir new-schools-today`
7. Change directories into new-schools-today: 
`cd new-schools-today`
8. Clone the repository using the following command: 
`git clone https://github.com/hackforla/new-schools-today.git`. 

You have successfully cloned the repository!


## Step 2: Downloading your code editor

Code editors are spaces where you can create and edit code. 

We recommend [VSCode](https://code.visualstudio.com/Download)

## Step 3: Downloading yarn commands
Install homebrew by typing the following into your terminal or command promp
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
`

Install yarn by typing the following into your terminal or command promp
`brew install yarn`


## Step 4: Running the website

In Visual Studio Code, go to File -> Open -> Documents -> GitHub -> new-schools-today. 


Open a new terminal by going to the top toolbar and clicking Terminal -> New Terminal. 

Then, change directories by typing in the terminal: ```cd nst-web```. 

Finally, type in the terminal: ```yarn && yarn start```.


