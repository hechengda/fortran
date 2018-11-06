program ch0905
    ! Narrow Field Widths and the f Edit Descriptor
    implicit none

    integer :: i
    real :: r1 = 9.9
    real :: r2 = 9.9
    real :: r3 = -9.9
    real :: r4 = -9.9

    do i = 1, 10
        print 100, i, r1, r2, r3, r4
        r1 = r1/10.
        r2 = r2*10.
        r3 = r3/10.
        r4 = r4*10.
    end do

100 format (' ', i3, '  ', f7.3, '  ', f7.3, &
    '  ', f7.3, '  ', f7.3)
end program
