# API Fetching App
This is a simple rails app that fetches data from an API and allows the user to download or print the same data.

# Features
- Fetches trivia questions from an API (openTDB)
- Displays the questions and their respective answers in a table format
- Allows users to download the questions as JSON or CSV
- Allows users to print the data on the browser console

# Installation
1. Clone the repository: "git clone https://github.com/codehrh/api_fetching_app"
2. Navigate to the project directory: "cd api_fetching_app
3. Install dependencies: "bundle install"
4. Start the rails server: "rails s"
5. Open the application on your browser by visiting: "http://localhost:3000" or: "http://127.0.0.1:3000"

# Usage
1. Input your desired number of questions from 1 to 15 and press "Fetch Trivia" to load the according amount of questions.
2. Download as JSON and Download as CSV buttons can be used to save the questions in a JSON and CSV format respectively.
3. Print to Console button is used to show the questions stored in the session on the browser console accessed through Developer Tools.

# Notes
1. Opening the page will automatically load 15 true or false trivia questions.
3. session[:trivia_questions] is used to keep track of the questions, which are also shown on the table.
4. The questions have been limited to only true or false questions, and only necessary field (question and correct_answer) to lessen the amount of data stored in the session.
5. Fetching trivia questions is restricted to 1 to 15 questions at a time to prevent cookie overflow.
