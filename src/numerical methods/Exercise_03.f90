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
    ! making variation of theta
    do i = 0, theta, 10
        ! the argument of trigonometric functions must be in radians
        radian_theta = i * 3.141593 / 180.0
        ! storing results in two arrays
        x(j) = r * (1 + n - cos(radian_theta) - sqrt((n ** 2) - (sin(radian_theta)) ** 2))
        v(j) = (w * r) * (sin(radian_theta) + &
                sin(2 * radian_theta) / 2 * (sqrt(n ** 2 - sin(radian_theta) ** 2)))
        ! increasing counter of arrays blocks
        j = j + 1
    end do
    ! printing results
    print *, "x:", x
    print *, "v:", v
end program main