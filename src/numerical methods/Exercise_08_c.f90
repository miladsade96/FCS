! Created by EverLookNeverSee@GitHub on 6/5/20
! For more information see FCS/img/Exercise_08_c.png

! Solution:
!   Since x = z * (2 ** m) Hence z = x / (2 ** m)
!   We can choose any `m` as long as -1 <= z <= 1
!   Our x = 3 , for which m = 2 and z = 0.75 works.
!   Smaller `m` will give a larger `z` which will give
!   smaller `xi` which will lead to fewer terms necessary
!   for a certain precision.

! I could not have done it without @taless474, @diehlpk and @LKedward