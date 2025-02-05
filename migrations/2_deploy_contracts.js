const CarOwnership = artifacts.require("CarOwnership");

module.exports = function (deployer) {
    deployer.deploy(CarOwnership);
};