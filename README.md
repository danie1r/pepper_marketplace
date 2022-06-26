**Please ensure you have downloaded the following additionally **

1. Ganache
2. Truffle (npm install -g truffle, or alternatively, sudo install -g truffle)
3. Metamask.io (hooked up on the browser)

# starter guide
1. Please run npm install on the terminal to download the appropriate packages already defined to the package.json file. 
Make sure you are in the source file. 
2. Open Ganache, copy private key from one of the accounts, import account in Metamask.
3. At the root directory run 'npm i'
4. At the root directory, run 'truffle init'
5. At the root directory, run 'truffle compile'
6. At the root directry, run 'truffle migrate', or alternatively, 'truffle migrate --reset'

# truffle test guide
1. Refer to PepperMotors.sol for conract name.
2. Run 'truffle console'
3. Run '<contract variable name> = await PepperMotors.deployed()'
4. 

**To run the development server on a local host scripts:** npm run start


