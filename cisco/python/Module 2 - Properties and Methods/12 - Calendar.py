# Calendar
import calendar

year = 2023
month = 8
cal = calendar.month(year, month)
print(cal)

## Day
print(calendar.day_name)
print(calendar.day_abbr)

## Day of the week
day_of_week = calendar.weekday(year, month, day)

## First Day of the Week
first_day = calendar.firstweekday()
print("First day of the week:", calendar.day_name[first_day])

## Month
print(calendar.month_name)
print(calendar.month_abbr)

## TextCalendar
cal = calendar.TextCalendar()
cal_text = cal.formatmonth(2023, 8)
print(cal_text)

## isleap: Checks if a year is a leap year
if calendar.isleap(year):
    print(f"{year} is a leap year.")
else:
    print(f"{year} is not a leap year.")