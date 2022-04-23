@echo off

pushd %~dp0
control intl.cpl,, /f:"remove_german.xml"
popd
