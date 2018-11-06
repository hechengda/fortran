program ch0602
    ! People's Weights and Setting the Array Size
    ! With a Parameter
    implicit none

    integer, parameter :: number_of_people = 10
    real :: total = 0., average = 0.
    integer :: person
    real, dimension(1:number_of_people) :: weight

    do  person = 1, number_of_people
        print *, ' type in the weight for person ', &
            person
        read *, weight(person)
        total = total+weight(person)
    end do
    average = total/number_of_people
    print *, ' The total of the weights is ', &
        total
    print *, ' Average Weight is ', average
    print *, ' ', number_of_people, &
        ' Weights were '
    do person = 1, number_of_people
        print *, weight(person)
    end do
end program
