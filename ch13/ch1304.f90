program ch1304
    ! Counting Vowels, Consonants, etc.
    implicit none

    integer :: v = 0, c = 0, d = 0
    integer :: b = 0, other = 0
    integer i
    character :: letter
    character(80) :: line

    read '(a)', line
    do i = 1, 80
        letter = line(i:i)
        select case (letter)
        case ('a', 'e', 'i', 'o', 'u')
            v = v+1
        case ('b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', &
            'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z')
            c = c+1
        case ('1', '2', '3', '4', '5', '6', '7', '8', '9', '0')
            d = d+1
        case (' ')
            b = b+1
        case default
            other = other+1
        end select
    end do
    print *, 'vowels = ', v
    print *, 'constants = ', c
    print *, 'digits = ', d
    print *, 'blanks = ', b
    print *, 'other characters = ', other
end program
