program ch1303
    ! Simple Calculator
    implicit none

    integer :: i, j, k
    character :: op

    do
        print *, 'type in two integers'
        read *, i, j
        print *, 'type in operator'
        read '(a)', op

        select case (op)
        case ('+')
            k = i+j
            print *, 'sum of numbers is ', k
        case ('-')
            k = i-j
            print *, 'difference is ', k
        case ('*')
            k = i*j
            print *, 'multiplication is ', k
        case ('/')
            k = i/j
            print *, 'division is ', k
        case default
            exit
        end select
    end do
end program
