program ch0509v2
    ! Using the Numeric Inquiry Functions with Integer Types
    use iso_fortran_env
    implicit none

    integer :: i
    integer(int8) :: i1
    integer(int16) :: i2
    integer(int32) :: i3
    integer(int64) :: i4

    print *, ' '
    print *, ' integer kind support'
    print *, ' kind            huge'
    print *, ' '
    print *, ' ', kind(i), ' ', huge(i)
    print *, ' ', kind(i1), ' ', huge(i1)
    print *, ' ', kind(i2), ' ', huge(i2)
    print *, ' ', kind(i3), ' ', huge(i3)
    print *, ' ', kind(i4), ' ', huge(i4)
    print *, ' '
end program
