function  Epsilon = precisao_maquina
  Eps1=1;
  while 1
    if 1+Eps1 <= 1
      return
    endif
    Epsilon=Eps1;
    Eps1=Eps1/2;
  endwhile
endfunction