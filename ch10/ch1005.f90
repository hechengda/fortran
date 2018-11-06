program ch1005
    ! Reading from Several Files Consecutively
    implicit none

    character(20), dimension(1:8) :: file_name = [ &
    'cardiffdata.txt     ','eastbournedata.txt  ','lerwickdata.txt     ',&
    'leucharsdata.txt    ','nairndata.txt       ','paisleydata.txt     ',&
    'rossonwyedata.txt   ','valleydata.txt      ' ]
    integer, parameter :: nmonths = 12
    integer, dimension(1:nmonths) :: year, month
    real, dimension(1:nmonths) :: rainfall, sunshine
    real :: rain_sum, rain_average, sun_sum, sun_average
    integer :: i, j
    character(80) :: fmt1 = '(3x,i4,2x,i2,3x,4x,4x,&
        &4x,4x,4x,3x,f5.1,3x,f5.1)'

    do j = 1, 8
        open(100,file=file_name(j),status='old')
        do i = 1, 7
            read(100,'(a)')
        end do
        if (j==5) then
            read(100,'(a)')
        end if
        do i = 1, nmonths
            read(100,fmt1) year(i), month(i), &
                rainfall(i), sunshine(i)
        end do
        close(100)

        rain_sum = sum(rainfall)/25.4
        sun_sum = sum(sunshine)
        rain_average = rain_sum/nmonths
        sun_average = sun_sum/nmonths
        write(*,'(//,"Station = ",a,/)') &
            file_name(j)
        write(*,'(2x,"Start ",i4,2x,i2)') year(1), month(1)
        write(*,'(2x,"End   ",i4,2x,i2)') year(12), month(12)
        write(*,100)
        write(*,110) rain_sum, rain_average
        write(*,120) sun_sum, sun_average
    end do

100 format(19x, ' Yearly Monthly', /, 19x, &
    ' Sum Average')
110 format('Rainfall (inches) ', f7.2, 2x, &
    f7.2)
120 format('Sunshine ', f7.2, 2x, f7.2)
end program
