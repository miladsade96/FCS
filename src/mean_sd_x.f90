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

end subroutine standrd_deviation