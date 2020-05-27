! Created by EverLookNeverSee@GitHub on 5/27/20
! This Program computes mean and standrd deviation of n experimental sequence.

subroutine mean(n, seq, mean_value)
    implicit none
    ! declaring parameters
    integer :: i, n
    real, intent(in) :: seq(n)
    real, intent(out) :: mean_value
    real :: sum = 0.
end subroutine mean