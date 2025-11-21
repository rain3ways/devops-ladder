# Linux File Permissions – `secret.txt` and `public.txt`

```bash
ls -l secret.txt
-rw------- 1 rain rain 0 Nov 21 06:58 secret.txt

ls -l public.txt
-rw-r--r-- 1 rain rain 0 Nov 21 06:58 public.txt
````

## 1. Interpreting the `ls -l` output

For each line:

* The first character shows the **file type**:

  * `-` : regular file
  * `d` : directory
* The next 9 characters are the **permissions**, grouped as:

  * `user` (owner)
  * `group`
  * `others` (everyone else)

Example layout:

* `- r w -  r - -  r - -`
* │ │ │  │   │   │
* │ │ │  │   │   └─ others
* │ │ │  │   └──── group
* │ │ │  └──────── user
* └─ file type

## 2. Permissions for `secret.txt`

`secret.txt` has:

```text
-rw-------
```

* **user (owner)**: `rw-`

  * `r` = read
  * `w` = write
  * `-` = no execute
* **group**: `---`

  * no permissions
* **others**: `---`

  * no permissions

➡ Only the owner `rain` can read and write `secret.txt`.
No one else can access it.

## 3. Permissions for `public.txt`

`public.txt` has:

```text
-rw-r--r--
```

* **user (owner)**: `rw-`

  * read + write
* **group**: `r--`

  * read only
* **others**: `r--`

  * read only

➡ The owner `rain` can read and write `public.txt`,
while everyone else can **read** it but cannot modify or execute it.

## 4. Summary of permission characters

* `r` – **read**
* `w` – **write**
* `x` – **execute**

  * for files: allowed to run the file as a program/script
  * for directories: allowed to enter (`cd`) and access contents
* `-` – permission not granted

