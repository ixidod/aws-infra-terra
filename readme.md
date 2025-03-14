# AWS EC2 Terraform Automation

This repository demonstrates a modern DevOps workflow using Terraform and GitHub Actions to provision and manage AWS EC2 instances securely and efficiently. The solution emphasizes:

- **Infrastructure as Code (IaC)**
- **GitOps Automation via GitHub Actions**
- **Secure authentication with AWS via OIDC** (no static credentials)

---

## Features

- Automated provisioning of EC2 micro instances (`t3.micro`)
- Centralized and secure infrastructure management
- Declarative infrastructure configuration
- CI/CD pipeline integration
- Minimal operational overhead

---

## Repository Structure

```
.
├── .github/
│   └── workflows/
│       └── terraform.yml
├── main.tf
├── variables.tf
└── outputs.tf
```

- **`main.tf`**: Defines AWS resources.
- **`variables.tf`**: Parameterizes the infrastructure.
- **`outputs.tf`**: Exposes useful deployment details (e.g., instance IP).
- **`.github/workflows/terraform.yml`**: Automates Terraform execution.

---

## Getting Started

### Prerequisites

- AWS account with IAM role configured for GitHub Actions via OIDC.
- GitHub repository configured for AWS OIDC federation.

### Deployment Workflow

1. **Create a feature branch:**

```bash
git checkout -b feature/my-feature
```

2. **Make Terraform changes**, commit, and push:

```bash
git add .
git commit -m "feat: add EC2 instance configuration"
git push origin feature/my-feature
```

3. **Open a Pull Request:**

- Terraform plans automatically generated for review.
- Merge upon approval triggers automated deployment (`terraform apply`).

---

## GitHub Actions Workflow

The GitHub Actions pipeline automates:

- Terraform initialization & validation
- Infrastructure planning (`terraform plan`)
- Infrastructure provisioning (`terraform apply`)

---

## Security Considerations

- AWS authentication via GitHub OIDC (no static keys).
- IAM roles follow the principle of least privilege.

---

## Monitoring & Observability

Integrate with:

- AWS CloudWatch
- External monitoring tools (Datadog, New Relic)

---

## Cleanup

To manually destroy infrastructure, trigger a manual GitHub Actions workflow (optional).

---

## License

Distributed under the MIT License. See `LICENSE` for more information.


