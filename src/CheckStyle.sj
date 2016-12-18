
function ExportCodeEditor() {
    var basePath = aqEnvironment.GetEnvironmentVariable("LOCALAPPDATA") +
                   "\\SmartBear\\TestComplete\\9.0\\StyleChecker\\";

    if (CodeEditor.IsEditorActive) {
        aqFile.WriteToTextFile(basePath + "jshint.js.tmp", CodeEditor.Text, aqFile.ctUTF8, true);
        var output = RunShellCommand("jshint --config " + basePath + "config.json --reporter " +
                                     basePath + "reporter.js " + basePath + "jshint.js.tmp");
        aqDlg.ShowMessage(output);
    }

    else {
        aqDlg.ShowMessage("No active editor to analyze");
    }
}

function RunShellCommand(Command) {
    var objShell = new ActiveXObject("WScript.Shell");
    var objScriptExec = objShell.Exec("cmd /c " + Command);
    var stdOut = objScriptExec.StdOut.ReadAll();

    if (stdOut) {
        return stdOut;
    }

    if (objScriptExec.ExitCode === 0) {
        return "No errors found";
    }
    return "Error, exit code: " + objScriptExec.ExitCode;
}
