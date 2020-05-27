! Created by EverLookNeverSee@GitHub on 5/27/20
! This Program computes mean and standrd deviation of n experimental sequence.

subroutine mean(n, seq, mean_value)
    implicit none
    ! declaring parameters
    integer :: i, n
    real, intent(in) :: seq(n)
    real, intent(out) :: mean_value
    real :: sum = 0.
    ! Calculating mean value and returning it
    do i = 1, n
        sum = sum + seq(i)
    end do
    mean_value = sum / n
    return
end subroutine mean

subroutine standrd_deviation(n, seq, x_bar, sd)
    implicit none
    ! declaring parameters
    integer :: i, n
    real, intent(in) :: seq(n)
    real, intent(in) :: x_bar
    real, intent(out) :: sd
    real :: sum = 0.
    ! calculating sum of elements minus mean value
    do i = 1, n
        sum = sum + (seq(i) - x_bar) ** 2
    end do
    ! calculating square root and returning result
    sd = sqrt(sum / (n - 1))
    return
end subroutine standrd_deviation


program main
    implicit none
    ! declaring variables
    real, allocatable, dimension(:) :: A
    real :: mean_value, sta_dev
    integer :: n, i
end program main