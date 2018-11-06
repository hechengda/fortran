program ch1501
    ! Use of cmplx, aimag and conjg
    implicit none

    complex :: z, z1, z2, z3, zbar
    real :: x, y, zmod
    real :: x2 = 3., y2 = 4.
    real :: x3 = -2., y3 = -3.

    z1 = cmplx(1.,2.)
    z2 = cmplx(x2,y2)
    z3 = cmplx(x3,y3)
    z = z1*z2/z3
    x = real(z)
    y = aimag(z)
    zmod = abs(z)
    zbar = conjg(z)
    print 100, z1, z2, z3
    print 110, z, zmod, zbar

100 format (3(f4.1, ' + i', f4.1))
110 format (f4.1, ' + i', f4.1, /, &
        f4.1, /, &
        f4.1, ' + i', f4.1)
end program
