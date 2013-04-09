#!/bin/bash

runspider=/opt/bin/runspider.sh
spiderman=/opt/bin/spiderman
mf=/opt/modulefiles

dirs="$mf/Core $mf/Applications $mf/Development $mf/Libraries $mf/special"

$runspider $dirs >all.json
$spiderman -c application all.json
$spiderman -c development all.json
$spiderman -c library all.json
$spiderman -k chemistry all.json
$spiderman -k physics all.json
$spiderman -k math all.json
$spiderman -k earth all.json
