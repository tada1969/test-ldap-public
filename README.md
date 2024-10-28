# ssh-ldap
### 1.ssh ไปที่ vm แล้ว sudo

### 2.ใช้ username, password ของ FreeIPA ที่มี permission เป็น admin
```
export FREEIPA_USERNAME="xxxxxx"
export FREEIPA_PASSWORD="xxxxxx"
```

### 3.run command สำหรับ setup
```
bash <(curl -ks https://gitlab.atcreative.internal/utilities/ssh-ldap/-/raw/main/ssh-authen-with-ldap.sh)
```