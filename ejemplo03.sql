-- Ejemplo simple de un DBMS_OUTPUT.PUT_LINE
-- Líneas nuevas agregadas. Nuevo comentario de archivo.

DECLARE
   lines dbms_output.chararr;
   num_lines number;
BEGIN
   -- enable the buffer with default size 20000
   dbms_output.enable;
  
   dbms_output.put_line('Archivo 3!');
   dbms_output.put_line('Hope you have enjoyed the tutorials!');
   dbms_output.put_line('Have a great time exploring pl/sql!');
   dbms_output.put_line('Linea 4 agregada!');
   dbms_output.put_line('Linea 5 agregada!');
 
   num_lines := 5;
 
   dbms_output.get_lines(lines, num_lines);
 
   FOR i IN 1..num_lines LOOP
      dbms_output.put_line(lines(i));
   END LOOP;
END;
/
