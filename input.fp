pipeline "confirmation" {
  title         = "Basic Pipeline to test input step"
  description   = "Displays a approve / deny button to the user and displays the response."
  param "notifier" {
    default = "default"
  }

  step "input" "confirm" {
    prompt   = "Do you want to approve?"
    type     = "button"
    notifier = notifier[param.notifier]

    option "Approve" {}
    option "Deny" {}
  }

  step "message" "echo" {
    text     = "You selected `${step.input.confirm.value}`"
    notifier = notifier[param.notifier]
  }
}