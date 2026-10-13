# MAMLAH QR Table Ordering

Website order pelanggan dari QR meja untuk MAMLAH.

## Keamanan data Electron

Project ini terpisah dari aplikasi Electron kasir. Tidak membaca, menghapus, atau menulis `localStorage` Electron. Menu lokal Electron tetap aman.

Website mengambil katalog dari tabel Supabase `qr_menu_items` dan menulis order ke `qr_orders`.

## Setup Supabase

1. Jalankan `supabase-menu-schema.sql` di Supabase SQL Editor.
2. Pastikan tabel `qr_tables` dan `qr_orders` sudah dibuat.
3. Publikasikan katalog menu dari aplikasi Electron ke `qr_menu_items` pada tahap sinkronisasi berikutnya.

## QR meja

Setelah GitHub Pages aktif, gunakan URL:

- `https://mamlahhouse-source.github.io/qrtable/?table=t1`
- `https://mamlahhouse-source.github.io/qrtable/?table=t2`
- `https://mamlahhouse-source.github.io/qrtable/?table=t3`
- `https://mamlahhouse-source.github.io/qrtable/?table=t4`
- `https://mamlahhouse-source.github.io/qrtable/?table=t5`

Pelanggan mengisi nama, WhatsApp, tipe pesanan, alamat delivery bila perlu, dan catatan sebelum mengirim order.

## GitHub Pages

Repository Settings → Pages → Deploy from branch → `main` → `/ (root)` → Save.
