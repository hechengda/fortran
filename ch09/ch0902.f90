program ch0902
    ! Integer Overflow and the i Edit Descriptor
    implicit none

    integer :: big = 10
    integer :: i

    do i = 1, 40
        print 100, i, big
        big = big*10
    end do

100 format (' ', i3, ' ', i12)
end program
