-- Cuenta Clara: una fila privada por usuario autenticado.
create table if not exists public.cuenta_clara_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  payload jsonb not null default '{"items":[],"salary":[],"travelComps":[]}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.cuenta_clara_data enable row level security;
revoke all on table public.cuenta_clara_data from anon, authenticated;
grant select, insert, update, delete on table public.cuenta_clara_data to authenticated;
drop policy if exists "Users read their own Cuenta Clara data" on public.cuenta_clara_data;
drop policy if exists "Users insert their own Cuenta Clara data" on public.cuenta_clara_data;
drop policy if exists "Users update their own Cuenta Clara data" on public.cuenta_clara_data;
drop policy if exists "Users delete their own Cuenta Clara data" on public.cuenta_clara_data;
create policy "Users read their own Cuenta Clara data" on public.cuenta_clara_data for select to authenticated using ((select auth.uid()) = user_id);
create policy "Users insert their own Cuenta Clara data" on public.cuenta_clara_data for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "Users update their own Cuenta Clara data" on public.cuenta_clara_data for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "Users delete their own Cuenta Clara data" on public.cuenta_clara_data for delete to authenticated using ((select auth.uid()) = user_id);
