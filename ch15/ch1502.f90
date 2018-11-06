program ch1502
    ! Polar Coordinate Example
    implicit none

    real :: omega, real_part, imag_part, magnitude, phase
    complex :: frequency_response

    print *, 'input frequency'
    read *, omega
    frequency_response = 1./cmplx(-omega*omega+1., 2.*omega)
    real_part = real(frequency_response)
    imag_part = aimag(frequency_response)
    magnitude = abs(frequency_response)
    phase = atan2(imag_part,real_part)
    print *, ' at frequency ', omega
    print *, 'response = ', real_part, ' + i ', &
        imag_part
    print *, 'in polar form'
    print *, ' magnitude = ', magnitude
    print *, ' phase = ', phase
end program
