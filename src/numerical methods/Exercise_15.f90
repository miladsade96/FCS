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
        end function cf
end module continued_fractions
