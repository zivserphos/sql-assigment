## 1.3
command: 
    with client as 
    (
    select t.c_id as client_id , 
    t.coach_id as coach,
    t.hours as hours,
    c.hourly_rate as hour_price,
    (t.hours*c.hourly_rate) as weekly_payment
    from training_sequence t left join coach c 
    on(t.coach_id = c.id)
    )
    select * from client 