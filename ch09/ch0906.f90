program ch0906
    ! Overflow and the f Edit Descriptor
    implicit none

    integer :: i
    real :: small = 1.
    real :: big = 1.

    do i = 1, 50
        print 100, i, small, big
        small = small/10.
        big = big*10.
    end do

100 format (' ', i3, ' ', f7.3, '  ', f7.3)
end program
