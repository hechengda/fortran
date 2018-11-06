module gcd_module
    implicit none

    contains
    integer function gcd(a, b)
        implicit none

        integer, intent(in) :: a, b
        integer :: temp

        if (a<b) then
            temp = a
        else
            temp = b
        end if
        do while (mod(a,temp)/=0 .or. mod(b,temp)/=0)
            temp = temp-1
        end do
        gcd = temp
    end function
end module

program ch1207
    ! Simple User Defined Function
    use gcd_module
    implicit none

    integer :: i, j, result

    print *, 'type in two integers'
    read *, i, j
    result = gcd(i,j)
    print *, 'gcd is ', result
end program
