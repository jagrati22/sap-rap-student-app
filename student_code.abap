CLASS zcl_jagrati_hello DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jagrati_hello IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  " Purana data clear karne ke liye (Optional)
    DELETE FROM zstudent_data.

    " Database table me naya data insert karne ka tarika
    INSERT zstudent_data FROM @( VALUE #(
        client     = sy-mandt
        student_id = '00000001'
        first_name = 'Jagrati'
        last_name  = 'Sharma'
        course     = 'B.Tech CSE'
        age        = 20
    ) ).

    out->write( 'Data successfully inserted into database!' ).
  ENDMETHOD.
ENDCLASS.
