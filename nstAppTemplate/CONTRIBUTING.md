# Contributing
## Installing dependencies & running the app
- Install [Flutter](https://flutter.dev/docs/get-started/install)
- Run the command <code>flutter doctor</code> and follow its instructions

To run the app:
- In the new-schools-today/nstAppTemplate directory run the command flutter run
## Standards
- All code must follow Prettier code standards
- All variables should be camelCase
- All packages must be pre-approved by tech lead
- Please remove all unneccesary changes before submitting your pull request

### Adding a new page
1. Get approved/Get assignment
    - Contact our technical lead [Benjamin Swerdlow](https://hackforla.slack.com/team/UKUHHS94L) with your idea
    - Open issue with page idea
    - Establish data structure
    - Make page designs
2. Create page folder
    - Create file with data object ex: <code>StaffDirectory</code> has the <code>Staff</code> class
    - Create page file that only includes the loading data <code>FutureBuilder</code>
    - Create body file that includes your page body
      - Whenever you have the opportunity to use our app [Globals](https://github.com/hackforla/new-schools-today/blob/master/nstAppTemplate/GLOBALS.md) please use them
      - Do not include any hard coded colors in your page
      - Body should include page logic and scaffolding
3. Add page to router
    - Add page file to the <code>main.dart</code>
    - Add route info to the <code>routes</code> list
    - Add route info to the <code>routes</code> map within the app object

## Getting assignments
Please contact our technical lead [Benjamin Swerdlow](https://hackforla.slack.com/team/UKUHHS94L); give your availability and technical skills
