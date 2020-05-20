! Created by EverLookNeverSee@GitHub on 5/20/20.

!Module that contains a function subprogram F(x) = x + x 2 + π ,
!and a subroutine SWAP that swaps two variables a and b.

module library
    use constants
    contains
    function F(x)
        F = x + x ** 2 + pi
    end function F

    subroutine SWAP(a, b)
        temp = a
        a = b
        b = temp
    end subroutine SWAP
end module library