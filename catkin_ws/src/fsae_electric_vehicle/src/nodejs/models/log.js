'use strict';
module.exports = (sequelize, DataTypes) => {
  const log = sequelize.define('log', {
    message_type: DataTypes.STRING,
    msg: DataTypes.JSON
  }, {});
  log.associate = function(models) {
    // associations can be defined here
  };
  return log;
};