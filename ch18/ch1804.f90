program ch1804
    ! Pointer Allocation and Assignment
    implicit none

    integer, pointer :: a=>null(), b=>null()
    integer, target :: c
    integer :: d

    allocate(a)
    a = 1
    c = 2
    b => c
    d = a+b
    print *, a, b, c, d
    deallocate(a)
end program
