create table if not exists public.qr_menu_items (
  id text primary key,
  name text not null,
  description text,
  price numeric(12,2) not null default 0,
  category text,
  active boolean not null default true,
  option_groups jsonb not null default '[]'::jsonb,
  image text,
  updated_at timestamptz not null default now()
);

alter table public.qr_menu_items enable row level security;
drop policy if exists qr_menu_items_public_read on public.qr_menu_items;
create policy qr_menu_items_public_read on public.qr_menu_items
for select to anon, authenticated using (active = true);
