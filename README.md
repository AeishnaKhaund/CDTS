## CDTS-TODO
Computation Engine:  
The computation is sort of to be defined like PyTorch's neural network definition with\
compute() and render() functionality to simulate and render the simulations.with goals  
for compute being primary

#Compute Engine
Since the first step of the project is simulate the comet dust trails of 67P/CG,the compute  
engine will be scaled to the solar system.  
Some key parts of the compute engine are:  
a)Planets - to define the properties of each planet and its trajectory,velocity,current  
position and the magnetic field at a distance x from the surface of the planet(optional)  
  
b)comet - same as planet and to account for any gravitational interaction from the planet and  
its temperature and vapor pressure as function of distance from the sun  

c)The dust trails to be simulated have to be decided by the code to scale up as individual  
particles or group them in sectors of 8 or as a fluid depending on available gpu resource  

d) The rosetta mission has shown the comets do indeed interact with solar wind,an optional goal  
for the project will be to implement this

e)Since the compute engine will be implemented in a modularized manner,adding pybind11 to  
make a python library out of the existing implementation with minimal changes to the code  

The code would possibly look like this:  
 class model:  
 model.planet("name","distance","Velocity","starting point","mass")//planet 1  
 model.planet("name","distance","Velocity","starting point","mass")//planet 2  
 model.comet(//comet properties)  
 model.star(//star properties)  
 
 model.compute(//to simulate and output to bin files of the simulation results)

