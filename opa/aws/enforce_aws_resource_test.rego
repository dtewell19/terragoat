package terraform

test_resource_allowed {
    result = deny with input as data.mock.valid_input
    count(result) == 0
}

test_resource_denied {
    result = deny with input as data.mock.invalid_input
    count(result) > 0
}
