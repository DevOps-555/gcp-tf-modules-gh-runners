### gcp-terraform-modules-configs

#### This repository is created for internal IaC code to manage Google cloud services.

##### CONTRIBUTIONS 🍰:

> _*NOTE: We are using GitHub flow to contribute to this project/repo*_

- **Clone the GitHub repo on your local machine:** 🖥️🗃️

    ```bash
    git clone https://github.com/ncratleos-T-and-T/fin-tnt-rmm-nonprod_iaas.git
    ```

- **Configure your Git settings:** 🖥️🛠️

    ```bash
    git config --local user.name ""
    git config --local user.email ""
    git config --local credential.username ""
    git config --local url."https://<Personal-Access-Token>@github.com/".insteadOf "https://github.com/"
    ```

- **Sync the main branch before creating a new topic branch:** 🖥️🛠️

    ```bash
    git checkout main
    git pull origin main
    ```

- **Create a new topic branch with the prefix `tntdevops/` from the main branch for new releases/features:** 🖥️🛠️

    ```bash
    git checkout -b feature/XYZ main

    #op:
    Switched to a new branch 'feature/1536'
    ```

- **Stage and commit your changes:** ⤵️

    ```bash
    git status
    git add .
    git commit -m "Description of the change being done"
    ```

- **Push your changes to the remote repository:** 🛠️

    ```bash
    git push origin feature/XYZ
    ```

*NOTE: Don't forget to perform the following steps on your local machine:*

- **Sync the main branch:**

    ```bash
    git checkout main
    git pull origin main
    ```

- **Delete the topic branch once the release is created:**

    ```bash
    git branch -D feature/XYZ
    git push origin --delete feature/XYZ
    ```

##### Prerequisites: 

- Ansible
- Terraform

##### Generate SSH Key Pair:

> _Run the following command to generate RSA key pair_

```sh 
ssh-keygen -t rsa -C ansible1
```

> _Optionally, you can generate elliptic curve ssh key pair as well_

```sh
ssh-keygen -t ed25519 -C ansible1
```

##### Add SSH Key to GCP Project: 

- _Go to compute engine section_
- _Click **Metadata**_
- _Select _**SSH KEYS**_ tab and click _**ADD SSH KEY**__
- _Upload public _**ansbile1.pub key**__
- _**cat ~/.ssh/ansbile1.pub**_

### Check if google cloud SDK is installed on your local 🔐

```bash
gcloud auth login
gcloud config set project PROJECT_ID

# This will create a json credentials on your local
gcloud auth application-default login

# To check list of Ubuntu images supported
gcloud compute images list | grep ubuntu
```

### Terraform execution commands: 

```sh
terraform init -backend-config ../env/gcs-backend-state.tf -input=false
terraform plan -var-file ../env/poc.tfvars -input=false -lock=false -refresh=true
terraform refresh -var-file ../env/poc.tfvars -input=false -lock=false -refresh=true
terraform apply -var-file ../env/poc.tfvars -input=false -lock=false -refresh=true --auto-approve
terraform destory -var-file ../env/poc.tfvars -input=false -lock=false -refresh=true
```

### Terraform File Structure 🧐 :

- Folder env consist of Varibales and State Bucket  _  📁 _:
```
 env/📂 
 └── poc_gcp.state.tf
 └── poc.tfvars
```

- Folder gcp consists of main file which as all the modules referring to each of the resource  _  📁 _:
    
```
 gcp/📂
 └── main.tf
 └── provider.tf
 └── vars.tf
 └── versions.tf
```

- Folder modules consists of all the resources  _  📁 _:
    
```
modules/📂
└── ComputeInstances/📂
    └── instances.tf
    └── vars.tf
```


### Connectivity with Ansible & Terraform Provisioner: 

```
https://medium.com/google-cloud/terraform-remote-exec-on-google-compute-engine-vm-instance-d47def447072
```
```
https://github.com/Sayed-Imran/Terraform-Scripts/tree/master/gcp-remote-exec
```
```
https://www.middlewareinventory.com/blog/create-linux-vm-in-gcp-with-terraform-remote-exec/
```
```
https://github.com/AKSarav/gcp-vm-remote-execution
```



<!---
vivekreddy0808/vivekreddy0808 is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.

- 👋 Hi, I’m @vivekreddy0808
- 👀 I’m interested in ...
- 🌱 I’m currently learning ...
- 💞️ I’m looking to collaborate on ...
- 📫 How to reach me ...
--->
