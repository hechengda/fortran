program ch0514
    ! Binary Representation of a Real Number
    implicit none

    integer :: i, j
    character(32) :: i_in_bits = ' '
    real :: x = 1.

    print *, '         1         2         3'
    print *, '12345678901234567890123456789012'
    print *, i_in_bits
    i = transfer(x,i)
    do j = 0, 31
        if (btest(i,j)) then
            i_in_bits(32-j:32-j) = '1'
        else
            i_in_bits(32-j:32-j) = '0'
        end if
    end do
    print *, x
    print *, i_in_bits
end program
