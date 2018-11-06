program ch1202
    ! The abs Generic Function
    implicit none

    complex :: c = cmplx(1.,1.)
    real :: r = 10.9
    integer :: i = -27

    print *, abs(c)
    print *, abs(r)
    print *, abs(i)
end program
