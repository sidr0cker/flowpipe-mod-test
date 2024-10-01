pipeline "confirmation" {
  title         = "Basic Pipeline to test input step"
  description   = "Displays a approve / deny button to the user and displays the response."

  step "input" "confirm" {
    prompt   = "Do you want to approve?"
    type     = "button"
    notifier = notifier[var.default_notifier]

    option "Approve" {
      label = "Approve"
      value = "Approve"
      style = "ok"
    }
    option "Deny" {
      label = "Deny"
      value = "Deny"
      style = "alert"
    }
  }

  step "message" "echo" {
    text     = "You selected `${step.input.confirm.value}`"
    notifier = notifier[var.default_notifier]
  }
}