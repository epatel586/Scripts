#!/usr/bin/env python

x = int(raw_input("Enter number to square: "))
ans = 0
itersLeft = x
while(itersLeft != 0):
        ans = ans + x
        itersLeft = itersLeft - 1
print(str(x) + "*" + str(x) + " = " + str(ans))