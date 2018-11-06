program ch0503
    ! Integer Division and Real Assignment
    implicit none

    integer :: i, j, k
    real :: answer

    i = 5
    j = 2
    k = 4
    answer = i/j*k
    print *, i, j, k, answer
end program
