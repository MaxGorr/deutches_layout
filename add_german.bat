@echo off

pushd %~dp0
control intl.cpl,, /f:"add_german.xml"
popd
