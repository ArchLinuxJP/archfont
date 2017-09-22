#!/bin/bash
set -e
if ! which fontforge ;then
	exit
fi
fontforge -script bin/archfont.pe
