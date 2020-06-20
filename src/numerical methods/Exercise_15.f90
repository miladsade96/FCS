! Created by EverLookNeverSee@Guthub on 06/18/20
! I could not have done it without @ivan-pi


module continued_fractions
    implicit none
    private     ! makes this module private
    ! makes these entities accessible from outside of the module
    public cf, pi_seq
    ! Simple continued fraction expansion of Pi taken from https://oeis.org/A001203
    integer, parameter :: pi_seq(20) = [3, 7, 15, 1, 292, 1, 1, 1, 2, 1, 3, 1, &
                                        14, 2, 1, 1, 2, 2, 2, 2]
    contains
        recursive function cf(b) result(pq)
            ! Returns the *simple* continued fraction of the sequence b
            ! declaring dummy parameters and local variables
            real, intent(in) :: b(:)
            real :: pq(2)
            real :: pq_n1(2), pq_n2(2)
            integer :: n
            n = size(b)
            ! conditions to satisfy `Euler-Wallis` recurrence relations
            if (n > 2) then
                pq_n2 = cf(b(1:n-2))
                pq_n1 = cf(b(1:n-1))
                pq = b(n)*pq_n1 + pq_n2
            else if (n == 2) then
                pq_n1 = cf(b(1:1))
                pq(1) = b(2)*pq_n1(1) + 1.0
                pq(2) = b(2)
            else if (n == 1) then
                pq(1) = b(1)
                pq(2) = 1.0
            end if
        end function cf
end module continued_fractions


program main
    use continued_fractions, only: cf, pi_seq
    implicit none   ! disabling implicit type assignment feature
end program main
