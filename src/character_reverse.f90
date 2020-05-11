! Created By EverLookNeverSee@GitHub on 5/11/20
! this function takes an arbitrary sized character and reverse it.

function character_reverse(ch) result(res)
    ! declaring dummy parameters
    character (len=*) :: ch, res
    ! declaring inside variables
    integer :: i, it, length
    length = len(ch)
    do i = 1, length
        it = length - i + 1     ! reading character from the right
        res(i:i) = ch(it:it)
    end do
    res = adjustl(res)
end function character_reverse