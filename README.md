## 🚀 Coolify Setup via Terraform

### 1. 🖥️ Create the Coolify Server

Run the following Terraform command to create only the Coolify server:

```bash
terraform apply -target=module.coolify_server
```

---

### 2. 🔑 Get the Coolify API Token

After the server is up and Coolify is accessible in your browser, log in to the Coolify dashboard and:

- Go to **Settings → Keys & Tokens**
- Create and copy your personal **API token**

---

### 3. 📝 Add Coolify Access Info to Terraform

Update your variables (e.g. in `terraform.tfvars`) with:

```hcl
coolify_token = "your_api_token_here"
coolify_url   = "http://<coolify_ip>:8000/api/v1"
```

Replace `<coolify_ip>` with the IP address from:

```bash
terraform output coolify_server_ip
```

### 4. 🚀 Connect server with Coolify

Once the API credentials are set, you can now apply the full infrastructure:
```bash
terraform apply
```
