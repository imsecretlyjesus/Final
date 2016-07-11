/**
 * Created by AntDy11 on 5/11/2016.
 */
var config;
if (__filename.indexOf('-private.') !== -1) { //this is the -private file
    config = {
        secret: 'my secret'
    };
} else { // this is the example; require the -private file
    try {
        config = require(__filename.substr(0, __filename.lastIndexOf('.')) + '-private');
    } catch (e) {
        console.log("You must copy "+__filename);
        console.log(__filename.substr(0, __filename.lastIndexOf('.')) + '-private.js');
        console.log("Then edit that file to provide your private configuration data to the app.");
        throw e;
    }
}

module.exports = config;