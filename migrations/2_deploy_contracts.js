const PepperMotors = artifacts.require("PepperMotors");

module.exports = function(deployer){
    deployer.deploy(PepperMotors);
};