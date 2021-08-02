REPORT Z_SUBMIT_RFC.
PARAMETERS ps_rfc TYPE rfcdest.
PARAMETERS ps_rep TYPE syrepid.

START-OF-SELECTION.

  CALL FUNCTION 'RZL_SUBMIT'
    DESTINATION ps_rfc
    EXPORTING
      repid         = ps_rep
*   EXCEPTIONS
*     NO_ADMIN_AUTHORITY       = 1
*     OTHERS                   = 2
            .
  IF sy-subrc <> 0.
* Implement suitable error handling here
  ENDIF.


END-OF-SELECTION.
