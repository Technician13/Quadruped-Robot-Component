# [Quadruped - FootendTraj - Animation](https://github.com/Technician13/Quadruped/tree/master/Quadruped%20-%20FootendTraj%20-%20Animation)
## Footend Trajectory of Quadruped Robot
* The code in this repository provides stop-motion animation of foot trajectory in sagittal plane of quadruped robots.     
* If you want to deploy it in your project, you can change the corresponding variables in the code according to the mechanical structure parameters of your robot. 
* Where, the code of the inverse kinematics solution is as follow:      
[https://github.com/Technician13/Quadruped/tree/master/Quadruped%20-%20InverseKinematic](https://github.com/Technician13/Quadruped/tree/master/Quadruped%20-%20InverseKinematic)       
* Run ` main.m `  
<div align=center>
 <img src="https://github.com/Technician13/Quadruped/blob/master/Quadruped%20-%20FootendTraj%20-%20Animation/images/result.png" width="560" height="420"/>       
</div>

    
    
# [Quadruped - ForwardKinematic](https://github.com/Technician13/Quadruped/tree/master/Quadruped%20-%20ForwardKinematic)
## Forward Kinematic of Quadruped Robot Leg
* The code in this repository provides a set of console version of the quadruped robot forward kinematic algorithm. Through the interaction with the console, the quadruped robot forward kinematic algorithm can be easily understood. The following shows some parameters and definition of coordinate system in the code.
>* The positive directions of  `gamma` ,  `alpha` and `beta` is the direction indicated by the arrow in the figure.
>* The picture shows the right legs of quadruped robots. 
* If you want to deploy it in your project, you can remove all input and output stream statements in order to simplify the code and save resources.
* Quadruped robot forward kinematic algorithm and quadruped robot inverse kinematic algorithm are often used together, the link of quadruped robot inverse kinematic algorithm is given as follow:    
[https://github.com/Technician13/Quadruped/tree/master/Quadruped%20-%20InverseKinematic](https://github.com/Technician13/Quadruped/tree/master/Quadruped%20-%20InverseKinematic)      
* Run ` main.m `  
<div align=center>
 <img src="https://github.com/Technician13/Quadruped/blob/master/Quadruped%20-%20ForwardKinematic/images/QuadrupedParameters.png" width="480" height="468"/>       
</div>

* Brief description of the files in the warehouse:
>* `QuadrupedForwardKinematic.cpp` contains all definitions of functions.
>* `QuadrupedForwardKinematic.h` contains all declaration of functions and classes.
>* `main.cpp` contains all instantiations of classes.       

 

# [Quadruped - InverseKinematic](https://github.com/Technician13/Quadruped/tree/master/Quadruped%20-%20InverseKinematic)
## Inverse Kinematic of Quadruped Robot Leg
* The code in this repository provides a set of console version of the quadruped robot inverse kinematic algorithm. Through the interaction with the console, the quadruped robot inverse kinematic algorithm can be easily understood. The following shows some parameters and definition of coordinate system in the code.
>* The positive directions of  `gamma` ,  `alpha` and `beta` is the direction indicated by the arrow in the figure.
>* The picture shows the right legs of quadruped robots. 
* If you want to deploy it in your project, you can remove all input and output stream statements in order to simplify the code and save resources.
* Quadruped robot inverse kinematic algorithm and quadruped robot forward kinematic algorithm are often used together, the link of quadruped robot forward kinematic algorithm is given as follow:    
[https://github.com/Technician13/Quadruped/tree/master/Quadruped%20-%20ForwardKinematic](https://github.com/Technician13/Quadruped/tree/master/Quadruped%20-%20ForwardKinematic)      
* Run ` main.m `  
<div align=center>
 <img src="https://github.com/Technician13/Quadruped/blob/master/Quadruped%20-%20InverseKinematic/images/QuadrupedParameters.png" width="480" height="468"/>       
</div>

* Brief description of the files in the repository:
>* `QuadrupedInverseKinematic.cpp` contains all definitions of functions.
>* `QuadrupedInverseKinematic.h` contains all declaration of functions and classes.
>* `main.cpp` contains all instantiations of classes.

 
 
# [Quadruped - EllipseAndCycloidFootendTraj](https://github.com/Technician13/Quadruped/tree/master/Quadruped%20-%20EllipseAndCycloidFootendTraj)
## Comparison between Cycloidal Trajectory and Elliptical Trajectory
* Run ` main.m `  
<div align=center>
 <img src="https://github.com/Technician13/Quadruped/blob/master/Quadruped%20-%20EllipseAndCycloidFootendTraj/images/result.png" width="560" height="420"/>       
</div>
 
 
 
# [Quadruped - Cheetah1FootendTraj - Recurrence](https://github.com/Technician13/Quadruped/tree/master/Quadruped%20-%20Cheetah1FootendTraj%20-%20Recurrence)
## The algorithm in paper 《Implementation of trot-to-gallop transition and subsequent gallop on the MIT Cheetah I》 is recurrented
* Run ` Cheetah1_foot_traj.m `       
<div align=center>
 <img width="455" height="343" src="Quadruped%20-%20Cheetah1FootendTraj%20-%20Recurrence/images/result.gif">       
</div> 
 
 
 
# [Quadruped - WalkMoveCoG](https://github.com/Technician13/Quadruped/tree/master/Quadruped%20-%20WalkMoveCoG)
## Center of gravity movement strategy under walk gait
* Run ` WalkOffset.m `  or ` WalkOffset_3.m `
<div align=center>
 <img width="455" height="343" src="Quadruped%20-%20WalkMoveCoG/images/result.gif">       
</div>

