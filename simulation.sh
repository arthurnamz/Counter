#!/bin/sh

rm -rf xsim*
rm -f *.log *.jou

xvlog *.v
xelab counter_tb -timescale 1ns/1ps
xsim counter_tb -R
