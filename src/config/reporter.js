"use strict";

module.exports = {
    reporter: function (arrResults) {
        var len = arrResults.length;
        var output = "";

        arrResults.forEach(function (result) {
            var file = result.file;
            var error = result.error;

            output += "line " + error.line + ", col " +
            error.character + ", " + error.reason + "\n";
        });

        if (output) {
            process.stdout.write(output + "\n" + len + " error" +
                    ((len === 1) ? "" : "s") + "\n");
        }
    }
};