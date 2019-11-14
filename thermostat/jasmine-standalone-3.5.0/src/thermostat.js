function Thermostat() {
    this.MINIMUM_TEMPERATURE = 10;
    this.temperature = 20;
    this.powerSavingMode = true;
    this.MAXIMUM_TEMPERATURE = 25;
};

Thermostat.prototype.temperatureRaise = function(amount) {
    this.temperature + amount > this.MAXIMUM_TEMPERATURE ? this.temperature = this.MAXIMUM_TEMPERATURE :
    this.temperature += amount ;
};

Thermostat.prototype.temperatureLower = function(amount) {
    this.temperature - amount < this.MINIMUM_TEMPERATURE ? this.temperature = this.MINIMUM_TEMPERATURE :
    this.temperature -= amount ;
};

Thermostat.prototype.switchMode = function() {
    this.powerSavingMode = !this.powerSavingMode;
    this.powerSavingMode === true ? this.MAXIMUM_TEMPERATURE = 25 :
    this.MAXIMUM_TEMPERATURE = 32;
};

Thermostat.prototype.reset = function() {
    this.temperature = 20;
};

Thermostat.prototype.usageMode = function() {
    if (this.temperature < 18){
        return "low-usage";
    } else if (this.temperature > 25) {
        return "high-usage";
    } else {
        return "medium-usage";
    }

};
