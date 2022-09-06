# RING-AND-JOHNSONS-COUNTER

## SYNOPSIS
A simple iverilog program to implement ```Ring``` and ```Johnsons``` Counter

## DESCRIPTION
- In each folder there are 2 .v (Verilog files) i.e. ```tb.v``` and ```md.v``` which are the execution and declaration files respectively.
- On execution, we can get to see the Clocking Diagram (GUI mode) of both the Counters in GTK wave.
- Can work both on ```Windows``` and ```Linux``` systems.

## INSTRUCTIONS
- Please install ```iverilog``` and ```GTKwave``` if not done. Then follow the remaining steps.
#### JOHNSONS COUNTER
- First open a terminal in ```JOHNSONS COUNTER``` and run the following.
```bash
iverilog -o jc tb.v md.v
```
```bash
vvp jc
```
- At this stage we get the output in console. To see the GUI Clocking diagram, execute the following :-
```bash
gtkwave JOHNSON_COUNTER.vcd
```
#### RING COUNTER
- First open a terminal in ```RING COUNTER``` and run the following.
```bash
iverilog -o rc tb.v md.v
```
```bash
vvp rc
```
- At this stage we get the output in console. To see the GUI Clocking diagram, execute the following :-
```bash
gtkwave RING_COUNTER.vcd
```
- So, this was the simple project about!

#### ```NOTE``` : For any queries, please feel free to mail : sutharsanraj2001@gmail.com

