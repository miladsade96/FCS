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
    ! getting user input for equation coefficients
    print *, "Please enter coefficients for cubic equation:"
    print *, "Cubic equation -> x^3 + a_1 * x^2 + a_2 * x + a_3 = 0"
    read *, a_1, a_2, a_3
    ! calculating Q, R and discriminant
    Q = (a_1 ** 2 - 3 * a_2) / 9
    R = ((2 * a_1 ** 3) - 9 * a_1 * a_2 + 27 * a_3) / 54
    discriminant = Q ** 3 - R ** 2
    if (discriminant >= 0) then ! we have three real roots
        ! calculating theta
        theta = acos(R / sqrt(Q ** 3))
        ! calculating and storing real roots in x_k for k = 1, 2, 3
        do k = 1, 3
            x_k(k) = (-2 * sqrt(Q)) * cos((theta + 2 * pi * (k - 1)) / 3) - (a_1 / 3)
        end do
        print *, "Real roots are:", x_k
    else    ! we have one real and two complex roots
        s = -1 * sign(1.0, R) * (abs(R) + sqrt(R ** 2 - Q ** 3))
        omega = (-1, 1.7320) / 2
        x_1 = s + Q / s - a_1 / 3
        z_2 = (omega * s) + (omega ** 2 * (Q / s)) - a_1 / 3
        z_3 = (omega ** 2 * s) + (omega * Q / s) - a_1 / 3
        print *, "Real root is:", x_1, "Complex roots are:", z_2, z_3
    end if
end program main