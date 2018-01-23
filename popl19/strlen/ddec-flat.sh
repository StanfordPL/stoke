#!/bin/bash

stoke_debug_verify --test_set "{ 0 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180 180 200 210 220 230 240 250 260 270 280 290 300 310 320 330 340 350 360 370 380 390 400 410 420 430 440 450 460 470 480 490 500 550 600 650 700 750 800 850 900 950 1000 1100 1200 1300 1400 1500 }" --strategy ddec --target opt1/func_2.s --rewrite opt1/func_1.s --testcases testcases --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi }" --solver z3 --alias_strategy flat
