# API Fetching App
This is a simple Rails app that fetches data from an API and allows the user to download or print the same data.

# Related Project
## API call script: `https://github.com/codehrh/api_call_script`
- The related project is a utility script that focuses only on the backend functionality.
- Example usage: `ruby api_call.rb -n <number_of_questions> -f <format>`
- Please see the README file in the repository of api_call_script for more information! 😃

## Features
- Fetches trivia questions from an API (OpenTDB).
- Displays the questions and their respective answers in a table format.
- Allows users to download the questions as JSON or CSV.
- Allows users to print the data on the browser console.

## Installation
1. Clone the repository: `git clone https://github.com/codehrh/api_fetching_app`
2. Navigate to the project directory: `cd api_fetching_app`
3. Install dependencies: `bundle install`
4. Start the Rails server: `rails s`
5. Open the application in your browser by visiting: `http://localhost:3000` or `http://127.0.0.1:3000`

## Usage
1. Input your desired number of questions (between 1 and 15) and press "Fetch Trivia" to load the corresponding number of questions.
2. The **"Download as JSON"** and **"Download as CSV"** buttons can be used to save the questions in JSON and CSV formats.
3. The **"Print to Console"** button displays the questions stored in the session in the browser console (accessible via Developer Tools).

## Notes
1. Opening the page will automatically load 15 true or false trivia questions.
2. `session[:trivia_questions]` is used to keep track of the questions, which are also displayed in the table.
3. The questions are limited to only true or false questions, and only the necessary fields (`question` and `correct_answer`) are stored to minimize session storage.
4. Fetching trivia questions is restricted to 1 to 15 questions at a time to prevent cookie overflow.

## Languages Used

### Backend:
- Ruby on Rails

### Frontend:
- JavaScript
- HTML
- CSS

## Dependencies
- `rails_live_reload` (used to display real-time changes on the page without having to refresh)
