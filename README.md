# Running Challenge

## Prep For Challenge

Clone the Repository

```bash
git clone git@github.com:spwisner/running-challenge.git
```

Enter the repository folder (running-challenge) and create a new branch that will be called challenge-work (see code).

Code:
```bash
cd running-challenge
git checkout -b my-work
```

Install Dependencies

Code:
```bash
bundle install
```

Create a `.env` for sensitive settings

Code:
```bash
touch .env
```

Copy and Paste the following code in the .env file:

```bash
SECRET_KEY_BASE_DEVELOPMENT=ebe00ac4d9569384d94ad2d68fe187a36f2ea9e8e3b14c3d09b48e8829291ab424fec5b66e18ccd44a16a84d0075d78a48b10d352a0de2ee8ce9486603078085
SECRET_KEY_BASE_TEST=36cb3d1123c8e2a4ee60bda201af664e4d5cc1a254dfb27da67f1035054910a0ba76682a9887fa467948eb8b764a30776e6047427f32740d3f512d6d4a9a8636
```

Build a local database

Code:
```bash
bin/rails db:nuke_pave
```

Run the Server

Code:
```bash
rails s
```

Create User Account (username will be Z@Z and password will be Z - you will not need to deal with manually entering credentials)

Code:
```bash
sh scripts/sign-up.sh
```
Output => {"user":{"id":1,"email":"Z@Z"}}

### Curl Requests:

Step 4 gives an example of a curl request.  **All curl requests will require you to include a user token**.  The user token is printed when you complete the sign-in curl request:

```bash
sh scripts/sign-in.sh
```
Output => {"user":{"id":1,"email":"Z@Z","token":"BAhJIiU1YzFiNjYyY2ZhNTE5ODQ0ODcyMzY5YWIyOWM5NmI3YgY6BkVG--13edc0930cafab1c06b74037b9bf137719bdbab7"}}

I included example curl requests in the "scripts" folder (there is also an example controller, example model, and example serializer)

After you write a curl request using the examples provided in "script" folder, you will run them by typing the following into the command line:

**All curl requests will require that a user be signed-in and have a valid token.  As a result, you must make sure that you include a token in every curl request**

### To Create:

Create Example 1
```bash
TOKEN=BAhJIiU2YzNjOGY3MGI1MGNkZTQ0OWE2NDRkNzUyYmZhYjNjZgY6BkVG--9ac321a2b3d104cf4856b376ace6b2aed42a0e93 TEXT="TEXT ONE" BOOL="true" sh scripts/create-example.sh
```
Output => {"example":{"id":1,"text":"TEXT ONE","bool":true,"editable":true}}

Create Example 2
```bash
TOKEN=BAhJIiU2YzNjOGY3MGI1MGNkZTQ0OWE2NDRkNzUyYmZhYjNjZgY6BkVG--9ac321a2b3d104cf4856b376ace6b2aed42a0e93 TEXT="TEXT TWO" BOOL="false" sh scripts/create-example.sh
```
Output => {"example":{"id":2,"text":"TEXT TWO","bool":false,"editable":true}}

### To Get:
```bash
TOKEN=BAhJIiU2YzNjOGY3MGI1MGNkZTQ0OWE2NDRkNzUyYmZhYjNjZgY6BkVG--9ac321a2b3d104cf4856b376ace6b2aed42a0e93 sh scripts/get-examples.sh
```
Output => {"examples":[{"id":1,"text":"TEXT ONE","bool":true,"editable":true},{"id":2,"text":"TEXT TWO","bool":false,"editable":true}]}

### To Show:
```bash
TOKEN=BAhJIiU2YzNjOGY3MGI1MGNkZTQ0OWE2NDRkNzUyYmZhYjNjZgY6BkVG--9ac321a2b3d104cf4856b376ace6b2aed42a0e93 ID=2 sh scripts/show-examples.sh
```
Output => {"example":{"id":2,"text":"TEXT TWO","bool":false,"editable":true}}

### To Update:
```bash
TOKEN=BAhJIiU2YzNjOGY3MGI1MGNkZTQ0OWE2NDRkNzUyYmZhYjNjZgY6BkVG--9ac321a2b3d104cf4856b376ace6b2aed42a0e93 ID=1 TEXT="Text One Updated" sh scripts/update-example.sh
```
Output => {"example":{"id":1,"text":"Text One Updated","bool":true,"editable":true}}

# Format for Answering Questions

Below is a list of tasks that will need to be completed.  After you complete a given task, you will need to do the following:

  1. Describe (in general), how you completed a goal.  Specifically, please describe if you accomplished your goal by writing code in this repository, or if you used the command line.  **If you use the command line, please cut and paste the command line code into this README file**
  2. Next, save your updated code using git by typing the following into the command line:

  (a) add the code to git
  ```bash
  git add example-file.js
  ```

  or a shortcut for adding multiple files at once:

  ```bash
  git add .
  ```
  (b) commit your work:

  ```bash
  git commit
  ```

  (c) After you type commit, you will be prompted to enter a commit message.  The commit message should always state the question you just completed.  For example: "Answer to Question 2"

  **Note: Close the commit message window in your text editor (e.g. close the atom commit message window.  Your text editor may refuse to let you continue coding until this window is closed.)**

### App Description

Assume we are making an app that keeps track of our runs for the marathon.

We want the user to monitor the following information about his or her daily training runs.  The user wants to be able to store the following information:

1. Date of the Run
1. Difficulty (on a scale of 1 to 10)
1. Distance in Miles
1. Time it took to complete the run
1. Notes

# Questions

### Question 1:
Create a Run Table with the columns: date, difficulty, distance, time, pace, and notes.

**Important: Make sure to include a user reference so that the record is associated with a particular user**

Create the table to be consistant with the information below:


|               | Date   | Difficulty  | Distance  |  Time  | Pace | Notes
| ------------- |:------:| -----------:| -----------:|-----------:|-----------:|-----------:|
| user submits:     | yes   | yes | yes | yes | no | yes
| user receives:    | yes   | yes | yes | yes | yes | yes
| data type     | date   | integer | float | time | time | text

Briefly, how did you approach this problem and create the table?  Did you generate code using the command line?  If so, copy and past the copy in the space below:

**---Your Answer Start---**

**---Your Answer End---**

**--------------------------------------------------**
**--------STOP - Add and Commit Your Work-----------**
**--------------------------------------------------**

### Question 2:
Next, we decided that we want to make certain entries optional, some required, and some not allowed.  Please require the user to enter the date, difficulty, distance, and time of a given run.  Allow users to enter notes if they choose, but make this optional.  Finally, do not allow a user to submit their pace

Note: Submissions that do not include a required field or include a pace (which is not allow) must be rejected and partial records should not be created.  In other words, do not omit or have ruby ignore values that are not allowed.  Instead, reject the entire submission.

Briefly, how did you approach this problem and create the table?  Did you generate code using the command line?  If so, copy and past the copy in the space below:

**---Your Answer Start---**

**---Your Answer End---**

**--------------------------------------------------**
**--------STOP - Add and Commit Your Work-----------**
**--------------------------------------------------**

### Question 3:
Next, we need to add a validation to the existing table.  Create a validation for difficulty that only accepts submissions that are integers between 1 and 10.  Also, create a validation to make sure that a person has not submitted a future date.

**---Your Answer Start---**

**---Your Answer End---**

**--------------------------------------------------**
**--------STOP - Add and Commit Your Work-----------**
**--------------------------------------------------**
### Question 4:
We want the average mile pace to be stored in the table without the user having to calculate this information.  Using Ruby, make this calculation for the user and have the results stored in the table

Briefly, how did you approach this problem and create the table?  Did you generate code using the command line?  If so, copy and past the copy in the space below:

**---Your Answer Start---**

**---Your Answer End---**

**--------------------------------------------------**
**--------STOP - Add and Commit Your Work-----------**
**--------------------------------------------------**

### Question 5:
We realized that calculating the pace and storing the value creates a problem if someone updates their distance or the time of their run.  Using Ruby, have the pace automatically updated if a user updates either the distance or the time of a given run.

Briefly, how did you approach this problem and create the table?  Did you generate code using the command line?  If so, copy and past the copy in the space below:

**---Your Answer Start---**

**---Your Answer End---**

**--------------------------------------------------**
**--------STOP - Add and Commit Your Work-----------**
**--------------------------------------------------**
### Question 6:

Now, we decide that we need to add a column to the table.  Add a column "Finished" which will accept boolean values.  This represents whether or not a run was complete.  The user will be able to submit this information, which is not required.  However, there will be a default value of false associated with each row.

Briefly, how did you approach this problem and create the table?  Did you generate code using the command line?  If so, copy and past the copy in the space below:

**---Your Answer Start---**

**---Your Answer End---**

**--------------------------------------------------**
**--------STOP - Add and Commit Your Work-----------**
**--------------------------------------------------**
### Question 7:
Next, we find that no one is using the notes column of the app.  Delete this column.

**---Your Answer Start---**

**---Your Answer End---**

**--------------------------------------------------**
**--------STOP - Add and Commit Your Work-----------**
**--------------------------------------------------**
### Question 8:
Finally, our users tell us that they do not want to receive all the results.  Instead, they only want the data returned of runs they completed.  Make the necessary changes so that only completed runs are returned

**---Your Answer Start---**

**---Your Answer End---**

**--------------------------------------------------**
**--------STOP - Add and Commit Your Work-----------**
**--------------------------------------------------**


### Bonus 1 - Optional
Update your last answer so that only completed runs in which the runner completes a 5 mile run under 8 minute mile pace get returned.

**---Your Answer Start---**

**---Your Answer End---**

**--------------------------------------------------**
**--------STOP - Add and Commit Your Work-----------**
**--------------------------------------------------**

### Bonus 2 - Optional

Our users tell us that they do not want to receive all the results.  Instead, they only want the data returned of runs they completed.  Make the necessary changes so that only completed runs are returned

**---Your Answer Start---**

**---Your Answer End---**

**--------------------------------------------------**
**--------STOP - Add and Commit Your Work-----------**
**--------------------------------------------------**
