module gcd_module
    implicit none

    contains
    integer function gcd(a, b)
        implicit none

        integer, intent(inout) :: a, b
        integer :: temp

        do while (b/=0)
            temp = mod(a,b)
            a = b
            b = temp
        end do
        gcd = a
    end function
end module

program ch1210
    ! gcd After Removing Recursion
    use gcd_module
    implicit none

    integer :: i, j, result

    print *, 'type in two integers'
    read *, i, j
    result = gcd(i,j)
    print *, 'gcd is ', result
end program
