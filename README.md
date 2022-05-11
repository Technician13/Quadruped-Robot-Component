# QuadrupedFootEndTrajectory
## Foot End Trajectory of Quadruped Robot
* The code in this repository provides stop-motion animation of foot trajectory in sagittal plane of quadruped robots.     
* If you want to deploy it in your project, you can change the corresponding variables in the code according to the mechanical structure parameters of your robot. 
* Where, the code of the inverse kinematics solution is as follows:      
[https://github.com/Technician13/QuadrupedInverseKinematic](https://github.com/Technician13/Quadruped/tree/master/Quadruped%20-%20InverseKinematic)

![images](https://github.com/Technician13/QuadrupedFootEndTrajectory/raw/master/untitled.jpg?raw=true)          



# QuadrupedForwardKinematic
## Forward Kinematic of Quadruped Robot Leg
* The code in this repository provides a set of console version of the quadruped robot forward kinematic algorithm. Through the interaction with the console, the quadruped robot forward kinematic algorithm can be easily understood. The following shows some parameters and definition of coordinate system in the code.
>* The positive directions of  `gamma`,`alpha` and `beta` is the direction indicated by the arrow in the figure.
>* The picture shows the right legs £¨`RF` and `RB`£© of quadruped robots. 
* If you want to deploy it in your project, you can remove all input and output stream statements in order to simplify the code and save resources.
* Quadruped robot forward kinematic algorithm and quadruped robot inverse kinematic algorithm are often used together, the link of quadruped robot inverse kinematic algorithm is given below:
    <br>[https://github.com/Technician13/QuadrupedInverseKinematic](https://github.com/Technician13/QuadrupedInverseKinematic)
    
<br>![images](https://github.com/Technician13/QuadrupedForwardKinematic/raw/master/images/QuadrupedParameters.png?raw=true)

* Brief description of the files in the warehouse:
>* `QuadrupedForwardKinematic.cpp` contains all definitions of functions.
>* `QuadrupedForwardKinematic.h` contains all declaration of functions and classes.
>* `main.cpp` contains all instantiations of classes.       



# QuadrupedInverseKinematic
## Inverse Kinematic of Quadruped Robot Leg
* The code in this repository provides a set of console version of the quadruped robot inverse kinematic algorithm. Through the interaction with the console, the quadruped robot inverse kinematic algorithm can be easily understood. The following shows some parameters and definition of coordinate system in the code.
>* The positive directions of  `gamma`,`alpha` and `beta` is the direction indicated by the arrow in the figure.
>* The picture shows the right legs £¨`RF` and `RB`£© of quadruped robots. 
* If you want to deploy it in your project, you can remove all input and output stream statements in order to simplify the code and save resources.
* Quadruped robot inverse kinematic algorithm and quadruped robot forward kinematic algorithm are often used together, the link of quadruped robot forward kinematic algorithm is given below:
    <br>[https://github.com/Technician13/QuadrupedForwardKinematic](https://github.com/Technician13/QuadrupedForwardKinematic)
    
<br>![images](https://github.com/Technician13/QuadrupedInverseKinematic/raw/master/images/QuadrupedParameters.png?raw=true)

* Brief description of the files in the repository:
>* `QuadrupedInverseKinematic.cpp` contains all definitions of functions.
>* `QuadrupedInverseKinematic.h` contains all declaration of functions and classes.
>* `main.cpp` contains all instantiations of classes.


