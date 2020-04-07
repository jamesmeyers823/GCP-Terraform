# GCP-Terraform

## Setup

- Add your project id to `main.tf`.
- Add your username to `variables.tf`
- Generate an ssh key for GCP using `ssh-keygen -t rsa -b 4096 -c "gmail-username` and save it to `~./ssh/gcp`

## Running

Run the following commands

```bash
$ terraform init
```

```bash
$ terraform plan
```

```bash
$ terraform apply
```

## To Destroy your instance

```bash
$ terraform destroy
```
