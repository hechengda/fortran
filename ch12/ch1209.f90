module gcd_module
    implicit none

    contains
    recursive integer function gcd(a, b) result(answer)
        implicit none

        integer, intent(in) :: a, b

        if (b==0) then
            answer = a
        else
            answer = gcd(b,mod(a,b))
        end if
    end function
end module

program ch1209
    ! Recursive Version of gcd
    use gcd_module
    implicit none

    integer :: i, j, result

    print *, 'type in two integers'
    read *, i, j
    result = gcd(i,j)
    print *, 'gcd is ', result
end program
