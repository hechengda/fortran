program ch1305
    ! Sentinel Usage
    implicit none

    integer, allocatable, dimension(:) :: a
    integer :: mark
    integer :: i, n

    print *, 'what number are you looking for?'
    read *, mark
    print *, 'how many numbers to search?'
    read *, n
    allocate(a(1:n+1))
    open(1,file='data.txt',status='old')
    read(1,*) (a(i), i=1,n)
    close(1)
    i = 1
    a(n+1) = mark
    do while (mark/=a(i))
        i = i+1
    end do
    if (i==n+1) then
        print *, 'item not in list'
    else
        print *, 'item is at position ', i
    end if
end program
