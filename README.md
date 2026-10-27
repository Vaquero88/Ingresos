# Ingresos Vaquero

App de ingresos personales publicada en GitHub Pages y conectada con Supabase.

## Acceso y sincronización

- Abre https://vaquero88.github.io/Ingresos/ e inicia sesión con el correo y contraseña de Supabase.
- Cada navegador conserva la sesión hasta que pulses **Cerrar sesión**.
- Los cambios se guardan automáticamente en Supabase; no hace falta sincronizar manualmente.
- En otro dispositivo, abre la misma web e inicia sesión con la misma cuenta.

## Base de datos

El proyecto necesita que se ejecute una vez `supabase/schema.sql` en el **SQL Editor** de Supabase. En **Authentication → URL Configuration**, incluye `https://vaquero88.github.io/Ingresos/` como URL permitida.

## Migrar los datos iniciales

En la app local, descarga una copia desde **Copia de seguridad**. En la web, inicia sesión en el primer navegador que tenga esa copia restaurada; la app guardará automáticamente esos datos en Supabase si aún no hay datos para esa cuenta.

## Copias y seguridad

- Usa **Copia de seguridad** para descargar o restaurar un archivo JSON. Guárdalo en un lugar privado.
- El repositorio público no contiene los importes del Excel.
- La app usa una clave pública de Supabase en el navegador y Row Level Security para restringir los datos a la cuenta autenticada. No se publica ninguna clave secreta.
