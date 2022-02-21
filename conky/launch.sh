#!/bin/bash

pkill conky || true

(sleep 3 && conky -c ~/.config/conky/clock.lua ) &
(sleep 3 && conky -c ~/.config/conky/devtest.lua ) &
