#!/bin/bash

SAMPLE() {
  echo hello world to sample function
  echo value of a = $a
  b=20
  echo first argument = $1
}
a=10
SAMPLE xyz
SAMPLE $1
echo value of b = $b




