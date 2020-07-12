             program demo_s2vs
             use M_strings, only : s2vs
             character(len=80)           :: s=' 10 20e3;3.45 -400.3e-2;1234; 5678 '
             doubleprecision,allocatable :: values(:)
             integer,allocatable         :: ivalues(:)

             values=s2vs(s)
             ivalues=int(s2vs(s))
             call reportit()

             contains
               subroutine reportit()
                 write(*,*)'S2VS:'
                 write(*,*)'input string.............',trim(s)
                 write(*,*)'number of values found...',size(values)
                 write(*,*)'values...................',(values(ii),ii=1,size(values))
                 write(*,*)'ivalues..................',(ivalues(ii),ii=1,size(values))
               end subroutine reportit
             end program demo_s2vs
