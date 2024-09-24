trigger "schedule" "my_fifteen_minute_trigger" {
    schedule = "15m"

    pipeline = pipeline.echo
}

trigger "schedule" "my_hourly_trigger" {
    schedule = "hourly"

    pipeline = pipeline.echo
}

trigger "schedule" "my_daily_trigger" {
    schedule = "daily"

    pipeline = pipeline.echo
}

trigger "schedule" "my_weekly_trigger" {
    schedule = "weekly"

    pipeline = pipeline.echo
}

pipeline "echo" {
    step "transform" "echo" {
        value = "Hello World"
    }
}
