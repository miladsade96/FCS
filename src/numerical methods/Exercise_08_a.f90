! Created by EverLookNeverSee@GitHub on 6/1/20
! For more information see FCS/img/Exercise_08_a.png

program main
    implicit none
    ! declaring and initializing variables
    real :: sum = 0.0, theta = 1.57079, t = 1.0
    integer :: i = 0
    ! iterating and calculating cos serie till obtaining correct result
    do
        sum = sum + t
        i = i + 1
        t = t * (-theta * theta) / (2 * i * (2 * i - 1))
        if (sum + t == sum) exit
    end do
    ! printing results
    print *, "Cos(", theta, "):", sum
end program main