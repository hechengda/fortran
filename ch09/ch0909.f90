program ch0909
    ! Three Ways of Generating Spaces
    implicit none

    integer :: i

    do i = 1, 4
        print 100, i, i*i
        print 110, i, i*i
        print 120, i, i*i
    end do

100 format (' ', i2, '  ', i4)
110 format (" ", i2, "  ", i4)
120 format (1x, i2, 2x, i4)
end program
