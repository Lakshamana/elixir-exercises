time = Time.utc_now()
IO.inspect(time.hour)
IO.inspect(time.microsecond)

date = Date.utc_today()
IO.inspect(Date.day_of_week(date))
IO.inspect(Date.leap_year?(date))

IO.inspect(NaiveDateTime.add(NaiveDateTime.utc_now(), 30000))  # add in seconds by default
IO.inspect(NaiveDateTime.add(NaiveDateTime.utc_now(), 1_000_000, :second))  # add in seconds by default
IO.inspect(DateTime.from_naive(~N[2019-01-01 12:00:00], "Etc/UTC"))
IO.inspect(DateTime.from_naive!(~N[2019-01-01 12:00:00], "Europe/Moscow"))
