# 🚀 Belajar Roleplay - SA:MP Gamemode Dasar

[![Lisensi](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Versi](https://img.shields.io/badge/Version-V1.0-informational)]()
[![Platform](https://img.shields.io/badge/Platform-SA:MP%200.3.7-red)](https://www.sa-mp.com/)
[![Tutorial](https://img.shields.io/badge/Tutorial-YouTube-red)](https://youtube.com/@jodymilton05?si=-dZ_DPW0H4nDMlx5) ⬅️ 
[![Bahasa](https://img.shields.io/badge/Language-PAWN-green)]()

## ✍️ Oleh: Jody Milton

Halo semuanya! Ini adalah *gamemode* dasar yang dibuat untuk dibagikan kepada kalian.

Tujuan utama proyek ini adalah untuk membantu kalian yang ingin **belajar** membuat server Roleplay **SA:MP**, terutama bagi yang menggunakan **Handphone** (dengan emulator seperti Winlator atau Exagear) untuk kompilasi.

Fokus utama *script* ini adalah pada sistem **Autentikasi Pemain** (Registrasi/Login) dan **Penyimpanan Posisi** menggunakan sistem file **dini** (format `.ini`).

### Fitur-Fitur yang Tersedia

* **Autentikasi:** Dialog Registrasi & Login sederhana.
* **Penyimpanan Data:** Menyimpan posisi pemain menggunakan *include* `dini`.
* **Teleportasi Cepat:** Teleportasi dengan hanya mengklik pada peta (*debug feature*).
* **Command Koordinat:** Command (`/pos`) untuk melihat koordinat posisi pemain saat ini.
* **Spawn Default:** Spawn awal pemain baru di bandara Los Santos.
* **Branding:** Menampilkan *TextDraw* nama server.

---

## 🛠️ Persyaratan (Prasyarat)

Anda harus menyiapkan file-file berikut agar *gamemode* ini bisa berjalan:

### 1. Server SA:MP
* **Samp Server** versi **0.3.7 R2-1**.
    * Siapkan versi **Linux** (untuk hosting) dan **Win32** (untuk kompilasi).

### 2. Include & Plugin Tambahan
Anda memerlukan *include* dan *plugin* berikut untuk kompilasi dan menjalankan *script*:

| File | Versi | Tautan |
| :--- | :--- | :--- |
| **dini** | 1.6 | [https://dracoblue.net/files/dini_1_6.zip](https://dracoblue.net/files/dini_1_6.zip) |
| **sscanf** | 2.13.8 | [https://github.com/Y-Less/sscanf/releases/tag/v2.13.8](https://github.com/Y-Less/sscanf/releases/tag/v2.13.8) |
| **zcmd** | Terbaru | [Cari referensi di Google] |

> **CATATAN PENTING:** Jika tautan di atas menyediakan versi Linux (`.so`) dan Win32 (`.dll`), unduh saja keduanya.

---

## 📂 Penempatan File (Struktur Folder)

Berikut adalah panduan penempatan file yang krusial untuk proses kompilasi dan *hosting*:

### A. Penempatan Include (`.inc`)
* File *Include* (`.inc`) versi **Win32** diletakkan di dalam:
    ```
    Samp Server Versi Win32/pawno/include/
    ```

### B. Penempatan Plugin (`.so` dan `.dll`)
1.  Buat folder baru bernama **`plugins`** di dalam *root* kedua folder server (Linux dan Win32).
2.  File *Plugin* (`.dll`) versi **Win32** diletakkan di dalam:
    ```
    Samp Server Versi Win32/plugins/
    ```
3.  File *Plugin* (`.so`) versi **Linux** diletakkan di dalam:
    ```
    Samp Server Versi Linux/plugins/
    ```

---

## 🚀 Langkah-Langkah Instalasi & Kompilasi

### 1. Persiapan Gamemode
1.  Hapus semua file di dalam folder **`gamemodes`** dari kedua file Samp Server (Linux & Win32).
2.  Di dalam folder **`gamemodes`** versi Win32, buat file baru dengan nama **`[nama_gamemode_anda].pwn`** (Contoh: `myroleplay.pwn`).
3.  Salin semua kode *gamemode* yang telah disediakan dan *paste* ke dalam file `.pwn` tersebut.

### 2. Kompilasi (Menggunakan Emulator HP)
1.  Kompilasi *gamemode* (`.pwn`) Anda menggunakan Samp Server versi **Win32** (di dalam Winlator/Exagear Emulator).
2.  Setelah berhasil *compile*, akan muncul file baru berformat **`.amx`** di lokasi yang sama dengan file `.pwn` Anda.

### 3. Persiapan Hosting
1.  *Copy* file **`.amx`** yang baru saja Anda buat.
2.  *Paste* file **`.amx`** tersebut ke dalam folder **`gamemodes/`** pada **Samp Server Versi Linux**.
3.  Pastikan Anda telah membuat folder **`Accounts/`** di *root* Server Linux, karena ini dibutuhkan oleh *include* `dini`.
4.  Edit file **`server.cfg`** di Server Linux dan pastikan Anda mendaftarkan *gamemode* dan *plugin* dengan benar:
    ```cfg
    gamemode0 [nama_gamemode_anda] 1
    plugins dini sscanf # Daftarkan semua plugin Anda di sini
    ```

### 4. Deploy Server
File Samp Server Versi Linux-nya tinggal Anda *upload* (taruh) di web server hosting Anda, misalnya: **Lemehost**.

---

## 🔑 Command Dasar

| Command | Deskripsi | Level Akses |
| :--- | :--- | :--- |
| `/pos` | Menampilkan koordinat posisi (X, Y, Z) dan *angle* (A) pemain saat ini. | Semua |
| *Klik Map* | Menggunakan klik pada map untuk teleportasi. | Semua |

---

## 📜 Lisensi

Proyek ini bertujuan untuk edukasi dan dikembangkan di bawah Lisensi **Lisensi MIT**. Lihat berkas `LICENSE` untuk detail.
