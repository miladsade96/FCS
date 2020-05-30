! Created by EverLookNeverSee@GitHub on 5/30/20
! For more information see FCS/img/Exercise_04.png

program main
    implicit none
    ! declaring variables
    integer :: i = 1
    real :: R = 20
    real , dimension(37) :: S
    ! checking current value of R to compute corresponding S
    1   if (R <= 120) then
        S(i) = 17000 - (0.485 * R ** 2)
        else
        S(i) = 18000 / (1 + (R ** 2 / 18000))
    end if
    ! checking current value of R to making loop
    if (R < 200) then
        ! incrementation of R
        R = R + 5
        ! icrementation of array blocks counter
        i = i + 1
        goto 1
    end if
    ! printing results
    print *, "S:", S
end program main