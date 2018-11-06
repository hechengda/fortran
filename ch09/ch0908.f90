program ch0908
    ! Simple g Edit Descriptor Example
    implicit none

    integer :: i
    real :: r1 = 1.23456
    real :: r2 = 1.23456

    print 100
    print 110
    do i = 1, 10
        print 120, i, r1, r2
        r1 = r1/10.
        r2 = r2*10.
    end do

100 format (' ', '123 123456789012 123456789012')
110 format ('  i3 g12.4        g12.4')
120 format (' ', i3, ' ', g12.4, ' ', g12.4)
end program
