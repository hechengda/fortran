program ch1004
    ! Reading One Column of Data from a File
    implicit none

    character(20) :: file_name = 'nairndata.txt'
    integer, parameter :: nmonths = 12
    real, dimension(1:nmonths) :: rainfall
    real :: rain_sum, rain_average
    integer :: i

    open(10,file=file_name)
    do i = 1, 8
        read(10,*)
    end do
    do i = 1, nmonths
        read(10,100) rainfall(i)
    end do
    close(10)
    rain_sum = sum(rainfall)/25.4
    rain_average = rain_sum/nmonths
    write(*,110)
    write(*,120) rain_sum, rain_average

100 format(37x,f5.1)
110 format(19x,'Yearly Monthly',/,&
    19x,'Sum    Average')
120 format(' Rainfall(inchs) ',f7.2,2x,f7.2)
end program
