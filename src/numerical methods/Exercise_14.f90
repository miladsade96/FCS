! Created by EverLookNeverSee@GitHub on 6/12/20
! For more information see FCS/img/Exercise_14.png

program main
    implicit none
    ! k = 1, 2, 3 for 3 real roots of equation
    ! a_1, a_2, a_3 --> real coefficients of equation
    ! x_1 --> real root of equation
    ! z_2, z_3 --> complex roots of equation
    ! z_k --> an array to store 3 real roots of equation for k = 1, 2, 3
    ! discriminant --> to specifying whether the equation has complex roots or not
    ! theta, omega, Q, R, s --> Check out /img/Exercise_14.png
    ! declaring variables
    integer :: k
    real :: a_1, a_2, a_3, Q, R, discriminant, theta, s, x_1
    complex :: z_2, z_3, omega
    real , dimension(3) :: x_k
    real, parameter :: pi = 3.1415
end program main