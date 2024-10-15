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
