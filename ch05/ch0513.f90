program ch0513
    ! Binary Representation of Different Integer Kind
    ! Type Numbers
    use iso_fortran_env
    implicit none

    integer :: i, j
    integer(int8) :: i1
    integer(int16) :: i2
    integer(int32) :: i3
    character(32) :: i_in_bits = ' '

    print *, ' type in an integer '
    read *, i
    i1 = int(i,int8)
    i2 = int(i,int16)
    i3 = int(i,int32)

    do j = 0, 7
        if (btest(i1,j)) then
            i_in_bits(8-j:8-j) = '1'
        else
            i_in_bits(8-j:8-j) = '0'
        end if
    end do
    print *, '         1         2         3'
    print *, '12345678901234567890123456789012'
    print *, i1
    print *, i_in_bits

    do j = 0, 15
        if (btest(i2,j)) then
            i_in_bits(16-j:16-j) = '1'
        else
            i_in_bits(16-j:16-j) = '0'
        end if
    end do
    print *, i2
    print *, i_in_bits

    do j = 0, 31
        if (btest(i3, j)) then
            i_in_bits(32-j:32-j) = '1'
        else
            i_in_bits(32-j:32-j) = '0'
        end if
    end do
    print *, i3
    print *, i_in_bits
end program
