/* Progress Script to calculate age. */
DEFINE VARIABLE v-day AS INTEGER FORMAT "99".
DEFINE VARIABLE v-month AS INTEGER FORMAT "99".
DEFINE VARIABLE v-year AS INTEGER FORMAT "99".
DEFINE VARIABLE v-age AS INTEGER.
DEFINE VARIABLE v-birthday AS DATE.

v-birthday = 12/31/1990. 

v-year = YEAR(TODAY) - YEAR(v-birthday).
v-month = MONTH(TODAY) - MONTH(v-birthday).
v-day = DAY(today) - DAY(v-birthday).

IF v-month < 0 THEN DO:
    v-year = v-year - 1.
    v-month = v-month + 12.
END.
IF v-month  = 0 THEN DO:
    IF v-day < 0 THEN v-year = v-year - 1.
END.

v-age = v-year.
DISP "age is " v-year.

