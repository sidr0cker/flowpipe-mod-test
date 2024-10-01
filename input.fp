pipeline "greet" {
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