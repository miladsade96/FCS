! Program    : Exercise_16
! Author     : FortranFan
! Reference  : https://en.wikipedia.org/wiki/Gauss%27s_continued_fraction#cite_note-8
!
! Description:
! An example implementation that illustrates how to employ a
! RECURIVE function in Fortran to compute the tangent of x using
! Lambert's continued fraction dating back to 1768 which gives
! tan(x) = x/(1-x**2/(3-x**2/(5-x**2/(7-x**2/..))))
!

module kinds_m
    ! Returns the kind value of a real data type with decimal precision of at least P digits
    integer, parameter :: WP = selected_real_kind( p=12 ) ! Select suitable precision
end module kinds_m

module trig_m
    ! importing WP from kinds module
    use kinds_m, only: WP
    ! Named constants
    real(WP), parameter :: ONE = 1.0_wp
    real(WP), parameter :: TWO = 2.0_wp
    real(WP), parameter :: PI = 3.14159265358979323846264338327950288_wp
    real(WP), parameter :: DEG_TO_RAD = PI/180.0_wp
    real(WP), parameter :: TOL = 1e-3_wp !<-- Suitable tolerance for continued fraction series
    real(WP), parameter :: UPPER_LIMIT = ONE/TOL

contains
    elemental function tand(degx) result(tanx)
      ! Calculate tangent of x in degrees using Lambert's formula
      ! Argument list
      real(WP), intent(in) :: degx ! x in degrees
      ! Function result
      real(WP) :: tanx
      ! Local variables
      real(WP) :: x
      x = degx * DEG_TO_RAD
      tanx = x / ( ONE + CalcFracLambert(x, n = 1))
      return
    end function tand

    pure recursive function CalcFracLambert(x, n) result(Frac)
      ! Argument list
      real(WP), intent(in) :: x ! x in radians
      integer, intent(in)  :: n
      ! Function result
      real(WP) :: Frac
      ! Local variables
      real(WP) :: Term
      Term = TWO*n + ONE
      if ( Term > UPPER_LIMIT ) then
         Frac = - x**2 / Term
      else
         Frac = - x**2 / ( Term + CalcFracLambert(x, n+1) )
      end if
      return
  end function CalcfracLambert
end module trig_m

program CalcTanx
end program CalcTanx
