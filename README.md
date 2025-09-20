# Cookiecutter_Template 🚀

**Dockerized scaffolding tool for generating standardized Terraform repositories**  
Built for rapid infrastructure setup, reproducibility, and team onboarding.

---

## 🔧 Features

- **Best-practice Terraform structure**: Modules, environments, and automation baked in  
- **Dockerized CLI**: No local Python or Cookiecutter setup required  
- **Environment-aware defaults**: Customize repo name, cloud provider, region, and more  
- **Automation-ready**: Includes Makefile, `.pre-commit-config.yaml`, `.editorconfig`, `.gitattributes`  
- **Team-friendly**: Ideal for onboarding, scaling infra, and enforcing standards  

---



---

## ⚙️ Prerequisites

Ensure the following tools are installed and configured on your system:

- [Docker](https://docs.docker.com/get-docker/) — for isolated execution of Cookiecutter  
- [Make](https://www.gnu.org/software/make/) — for automation and scripting  

---

## 🚀 Usage

### Generate a Terraform-ready repository:

#### 🔹 Option 1: Default template generation

```bash
make test
```
Generates a repo using default values defined in cookiecutter.json.

🔹 Option 2: Interactive scaffoldin
```bash
make generate
```

Prompts for custom inputs like repo name, cloud provider, region, etc.

🛠️ Customization
Edit cookiecutter.json to define default values for:
- git_repo_name
- cloud_provider
- region
- owner

🧪 Development & Testing
- Validate Docker setup: make test
- Generate repo interactively: make generate
  
📘 References
- Cookiecutter Documentation
- Terraform Best Practices

👨‍💻 Author
Himanshu Pant
Infrastructure Engineer | DevOps | SRE | Cloud Automation
GitHub Profile

