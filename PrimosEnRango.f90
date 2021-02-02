program PrimosEnRango
	implicit none
	real (kind=8) :: i, f
	logical :: esPrimo
	i=2
	f=100

	if (i.LE.2) then 
		print *, 2d0
	end if
	if (mod(i,2d0).EQ.0) then 
		i=i+1 
	end if	
	do while (i.LE.f)
		if (esPrimo(i)) then
			print *, i
		end if
		i=i+2
	end do
end program PrimosEnRango

LOGICAL function esPrimo(x)
	implicit none
	real(kind=8) :: x
	integer(kind=8) :: i_loc, SQRT_loc
	i_loc=3
	sqrt_loc=int(sqrt(x))
	do while (i_loc.LE.sqrt_loc)
		if (mod(x,real(i_loc)).EQ.0) then
			esPrimo=.FALSE.
			return
		end if
		i_loc=i_loc+2
	end do
	esPrimo=.TRUE.
	return
end function esPrimo
