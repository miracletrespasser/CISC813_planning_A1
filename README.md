# CISC813_planning_A1
This is a pddl planning of a prison break game. <br/>The prisoner needs to figure out a way to bypass the guards get the keys and escape the prison. <br/>
The prison may have variable structure, in this case the example problem prison has a structure as shown below. <br/>
![structure](https://user-images.githubusercontent.com/72099367/214462753-4a4a80d0-c837-47fa-84cb-d22a11b5e48b.jpg)
<br/>
Bi-directional arrow indicates there is a two-way hall bettwen the cells. Uni-directional arrow indicates only a one-way pass through the cells. No connection means no way between the cells.</br>
The prisoner can do three things: move between cells, pick up the key, escape through the exit. Cell6 and cell8 are circled since there are guards in the cell, hence the prisoner cannot enter those two cells.</br>
