program ch1807

    ! Using the C loc Function
    implicit none
    integer, pointer :: a=>null(), b=>null()
    integer, target :: c
    integer :: d

    allocate(a)
    allocate(b)
    a = 100
    b = 200
    print *, a, b
    print *, loc(a), loc(b), loc(c), loc(d)
    c = 1
    a => c
    c = 2
    b => c
    d = a+b
    print *, a, b, c, d
    print *, loc(a), loc(b), loc(c), loc(d)
end program
