/* This code gets the value the application variable COUNTER, increments it and */
/* places the result into a text field in the window specified by the TARGET parameter */
Arg window, target, repeat
value=0
do while value < repeat
   value = VpAppVariable("GET", "COUNTER")
   value=value+1
   call VpAppVariable "SET", "COUNTER", value

   call VpSetItemValue window, target, value
   /* Sleep for 1 second */
   call VpThread "SLEEP", 1000
end

/* Notify main window, this thread has ended */
CALL VpNotify window,'message', window
