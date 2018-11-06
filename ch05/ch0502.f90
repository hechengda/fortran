program ch0502
    ! Type Conversion and Assignment
    implicit none

    real :: a, b, c
    integer :: i

    a = 1.5
    b = 2.
    c = a/b
    i = a/b
    print *, a, b
    print *, c
    print *, i
end program
