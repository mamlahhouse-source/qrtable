-- Jalankan setelah tabel qr_menu_items dibuat.
-- Buat user admin di Supabase: Authentication > Users > Add user.
-- Policy ini memberi akses CRUD hanya kepada user yang sudah login Supabase.

drop policy if exists qr_menu_items_admin_all on public.qr_menu_items;
create policy qr_menu_items_admin_all
on public.qr_menu_items
for all
to authenticated
using (true)
with check (true);
