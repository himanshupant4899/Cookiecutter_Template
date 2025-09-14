variable "aws_region" {
    description = "AWS region to create resources in"
    type = string
    value = "{{cookiecutter.aws_region}}"
}

{% if cookiecutter.tf_enable_remote_reference == "true" %}
variable "remote_state_bucket_name" {
    description = "Name of S3 bucket to store state file"
    type = string
}
{% endif %}