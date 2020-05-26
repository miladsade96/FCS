! created by EverLookNeverSee@GitHub on 05/26/20
! This program computes slope of the chord in given function.

!               y = sqrt(x) ,       if 0 =< x =< 1
! y = f(x) -->
!               y = e ** (1 - x) ,  if x > 1

function f(x)
    if (x >= 0. .and. x<= 1.) then
        f = sqrt(x)
    elseif (x > 1.) then
        f = exp(1. - x)
    else
        print *, "Function not defined."
    end if
    return
end function f