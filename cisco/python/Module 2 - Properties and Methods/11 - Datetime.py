# Datetime
import datetime

## Now
now = datetime.now()  # Current date and time
print(now)
print(now.year, now.month, now.day)
print(now.hour, now.minute, now.second)

## Today
today = datetime.date.today()  # Current date
print(today)
print(today.year, today.month, today.day)

## Current time
current_time = datetime.time(14, 30, 0)  # 2:30 PM
print(current_time)
print(current_time.hour, current_time.minute, current_time.second)

## Formatting Dates and Times
formatted_date = now.strftime("%Y-%m-%d %H:%M:%S")
print(formatted_date)

## Parsing Dates from Strings
date_string = "2023-08-25"
parsed_date = datetime.strptime(date_string, "%Y-%m-%d")
print(parsed_date)

## Time Intervals
one_day = datetime.timedelta(days=1)
tomorrow = today + one_day
print(tomorrow)
