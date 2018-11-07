program ch1803
    ! Referencing Pointer Variables Before Allocation
    implicit none

    integer, pointer :: a=>null(), b=>null()
    integer, target :: c
    integer :: d

    print *, a, b
    c = 1
    a => c
    c = 2
    b => c
    d = a+b
    print *, a, b, c, d
end program
