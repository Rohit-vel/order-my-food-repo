# OrderMyFood

An online food ordering system developed using MEAN (MongoDB, ExpressJS, Angular, NodeJS) with jwt authentication enabled and password encrypted.

## How to run the application?

  ### Prerequisites:
  - Node LTS version 16.x
  - git
  - Angular CLI


## How to make any changes in the UI?

### To make changes and verify it locally
  
  1. Go to `server.js`, uncomment the lines from 10 to 14 and comment out the lines from 18 to 26.
  2. Save the changes and run `node server` under the `server` directory.
  3. Go to `client/src/environments/environment.ts`, comment out the line no. 8 and uncomment line 7.
  4. Do whatever changes you want in the application and save it.
  5. Run the command `ng serve` under the `client` directory.
  6. Open the localhost URL shown in your terminal.
  7. Now, you should see the changes that you made in the application.
  
### To run the changes in the production environment

  1. Once the changes that you made are okay for you, go to `client/src/environments/environment.ts`, uncomment line no. 8 and comment out the line 7.
  2. Save the changes and run the command `ng build --prod` in the `client` directory.
  3. After the successful build, replace the contents of the `public` folder under the `server` directory with the contents of `dist/order-my-food` in the `client` directory.
  4. Go to `server.js`, comment out the lines from 10 to 14 and uncomment the lines from 18 to 26.
  4. Run the command `node server` under the `server` directory.
  5. Open the localhost URL shown in your terminal.