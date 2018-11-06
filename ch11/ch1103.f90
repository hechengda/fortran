program ch1103
    ! Use of newunit and lentrim
    implicit none

    character(20) :: station, file_name
    integer :: i, io_stat_number, filestat, flen, uno
    integer, parameter :: nmonths = 12
    integer, dimension(1:nmonths) :: year, month
    real, dimension(1:nmonths) :: rainfall, sunshine
    real :: rain_sum, rain_average
    real :: sun_sum, sun_average

    do
        print *, 'input weather station'
        print *, ' or "end" to stop program'
        read '(a)', station
        if (station=='end') exit

        flen = len_trim(station)
        file_name = station(1:flen) // 'data.txt'
        open(newunit=uno,file=file_name,iostat=filestat)
        if (filestat/=0) then
            print *, 'error opening file ', file_name
            print *, 'retype the file name'
            cycle
        end if
        do i = 1, 8
            read(uno, fmt='(a)')
        end do
        do i = 1, nmonths
            read(uno,100,iostat=io_stat_number) &
                year(i), month(i), rainfall(i), sunshine(i)
            if (io_stat_number/=0) then
                print *, 'error reading record ', i+8, &
                    ' so following results incorrect:'
                exit
            end if
        end do
        close(uno)

        rain_sum = sum(rainfall)/25.4
        sun_sum = sum(sunshine)
        rain_average = rain_sum/nmonths
        sun_average = sun_sum/nmonths
        write(*,110) station
        write(*,120) year(1), month(1)
        write(*,130) year(12), month(12)
        write(*,140)
        write(*,150) rain_sum, rain_average
        write(*,160) sun_sum, sun_average
    end do

100 format(3x, i4, 2x, i2, 27x, f4.1, 3x, f5.1)
110 format(/, /, 'Station = ', a, /)
120 format(2x, 'Start ', i4, 2x, i2)
130 format(2x, 'End   ', i4, 2x, i2)
140 format(19x, 'Yearly Monthly', /, 19x, 'Sum    Average')
150 format('Rainfall(inches)', f7.2, 2x, f7.2)
160 format('Sunshine        ', f7.2, 2x, f7.2)
end program
