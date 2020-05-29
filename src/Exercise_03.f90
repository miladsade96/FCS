! Created by EverLookNeverSee@GitHub on 5/29/20
! For more information see FCS/img/Exercise_03.png

program main
    implicit none
    ! n --> rod length
    ! r --> crank radius
    ! w --> angular Velocity(rpm)
    ! theta --> crank angle
    ! x --> displaceemnt
    ! v --> velocity
    ! declaring variables
    integer :: i,theta, j = 1
    real :: n, r, w, radian_theta
    real, dimension(37) :: x, v
    ! initializing variables
    n = 4; r = 4; w = 2000; theta = 360
end program main