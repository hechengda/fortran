program ch0511
    ! Literal Real Constants in a Calculation
    use iso_fortran_env
    implicit none

    integer, parameter :: dp = real64
    real, parameter :: pi = 3.1415926535897931
    real(dp), parameter :: pid = 3.1415926535897931_dp
    real :: area, r = 2.
    real(dp) :: aread, rd = 2._dp

    area = pi*r*r
    aread = pid*rd*rd
    print 100, r, rd
    print 110, area, aread

100 format ('r     = ', f22.18, /, 'rd    = ', &
    f22.18)
110 format ('area  = ', f22.18, /, 'aread = ', &
    f22.18, /, 16x, '  ######')
end program
