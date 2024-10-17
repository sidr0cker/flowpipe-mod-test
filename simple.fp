pipeline "simple" {
    param "name" {
        default = var.my_name
    }

    description = "A simple pipeline with my name: ${var.my_name}"

    step "transform" "echo" {
        value = "Hello World ${param.name}"

        output "echo_1" {
            value = "echo 1"
        }

        output "echo_2" {
            value = "echo 2"
        }
    }

    output "val" {
        value = step.transform.echo.value
    }
}

pipeline "simple2" {
    step "transform" "echo" {
        value = "echo"
    }

    step "transform" "echo_2" {
        value = "echo 2"
    }

    step "transform" "echo_3" {
        depends_on = [step.transform.echo, step.transform.echo_2]
        value = "echo 3"
    }

    output "val" {
        value = step.transform.echo_3.value
    }
}