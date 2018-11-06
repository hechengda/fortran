program ch1001
    ! Reading Integer Data
    implicit none

    integer, parameter :: npeople = 10
    integer, dimension(1:npeople) :: height_feet, &
        height_inch, weight_stone, weight_pound
    real, dimension(1:npeople) :: height_m, weight_kg
    integer :: i

    open(10,file='ch1001.txt',status='old')
    open(20,file='ch1001.out',status='new')

    do i = 1, npeople
        read(10,100) height_feet(i), height_inch(i), &
            weight_stone(i), weight_pound(i)
        height_m(i) = (height_feet(i)*12+height_inch(i))*2.54/100
        weight_kg(i) = (weight_stone(i)*14+weight_pound(i))/2.2
        write(20,110) height_m(i), weight_kg(i)
    end do
    close(10)
    close(20)

100 format(i2,2x,i2,2x,i2,2x,i2)
110 format(1x,f5.2,2x,f4.1)
end program
