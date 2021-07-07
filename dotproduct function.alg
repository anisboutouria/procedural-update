function dot_product(v1(arr),v2(arr))
var i = 0;
var ps = 0;
FUNCTION dot_product(v1,v2 : ARRAY_OF INTEGER) : INTEGER
VAR
    i, ps : INTEGER;
BEGIN
    ps :=0;
    i:=0;
    IF (v1.length <> v2.length) THEN
        Write("vectors with different sizes we cannot calculat ps product");
        RETURN NaN; 
    END_IF
    WHILE (i <v1.length ) DO
        ps := ps + v1[i]*v2[i];
    END_WHILE
    RETURN ps ;
END

ALGORITHM orth_vectors
VAR
    v1,v2 : ARRAY_OF INTEGER [50];
    ps : INTEGER;
BEGIN
     n1 := read_size();
    read_array(n1,v1);
    n2 := read_size();
    read_array(n2,v2);
    ps := ps_product(v1,v2);
    IF (ps = 0) THEN
        Write("V1 and V2 are orthogonal");
    ELSE
        Write("V1 and V2 are not orthogonal");
    END_IF
END