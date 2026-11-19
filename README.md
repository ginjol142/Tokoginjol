# TOKOGINJA — Toko Sparepart Otomotif

Aplikasi toko sparepart otomotif berbasis Laravel 11 + Filament v3, dengan fitur pembelian oleh customer dan panel admin untuk mengelola produk, kategori, brand, serta transaksi.

## Fitur

### Halaman Customer
- **Beranda** — menampilkan seluruh produk sparepart beserta kategori, brand, dan stok.
- **Login & Register** — autentikasi customer.
- **Pembelian** — customer dapat membeli sparepart, stok otomatis berkurang dengan mekanisme transaksi aman (`lockForUpdate`).
- **Riwayat Pembelian** — halaman baru untuk melihat daftar transaksi milik customer yang sedang login lengkap dengan **status pembelian** (Verifikasi → Proses → Kirim → Sampai → Selesai), statistik ringkasan, dan timeline pelacakan pesanan terbaru.

### Panel Admin (Filament)
- Manajemen Produk
- Manajemen Kategori
- Manajemen Brand
- Manajemen Pembelian (admin dapat memperbarui status pesanan customer)

## Cara Menjalankan

1. `composer install`
2. `cp .env.example .env` lalu sesuaikan konfigurasi database (MySQL, db: `ginjol`)
3. `php artisan key:generate`
4. Import `ginjol (1).sql` ke database MySQL, **atau** jalankan `php artisan migrate`
5. `php artisan serve`
6. Buka `http://127.0.0.1:8000`

## Akun Demo

- **Admin** — login melalui panel Filament di `/admin` (role: `admin`).
- **Customer** — registrasi baru melalui halaman `/register`, akun otomatis berperan sebagai `customer`.

## Rute Baru

| Method | Path                     | Nama Route           | Keterangan                              |
|--------|-------------------------|----------------------|-----------------------------------------|
| GET    | `/riwayat-pembelian`    | `riwayat.pembelian`  | Riwayat pembelian + status (auth only)  |

## Branding

Nama aplikasi: **TOKOGINJA** — diatur di `.env` (`APP_NAME=TOKOGINJA`), `config/app.php`, dan tampilan di `resources/views/`.
