# Cuenta Clara · publicación web

La versión de esta carpeta está lista para GitHub Pages. No incluye el historial importado del Excel. Usa Supabase Auth y políticas Row Level Security (RLS) para que cada cuenta solo pueda leer o cambiar sus propios datos.

## Antes de publicar

1. En la app actual, abre **Copia de seguridad** y descarga el archivo JSON con tus datos.
2. En tu cuenta nueva de GitHub, sube el contenido de esta carpeta al repositorio y a la rama `main`.
3. En el proyecto Supabase, abre **SQL Editor** y ejecuta todo el contenido de `supabase/schema.sql`.
4. En **Authentication → URL Configuration**, añade la URL exacta que tendrá GitHub Pages, por ejemplo `https://USUARIO.github.io/REPOSITORIO/`.
5. En GitHub, abre **Settings → Pages** y selecciona **GitHub Actions**. El flujo de esta carpeta publica la app automáticamente al subir cambios a `main`.
6. Abre la web publicada, pulsa **Copia de seguridad → Restaurar desde archivo** y elige el JSON descargado.
7. Pulsa **Conectar cuenta**, crea una cuenta nueva de Supabase y confirma el correo si te lo pide. Al iniciar sesión, acepta subir tus datos actuales a la nube.
8. En cada dispositivo, abre la misma web y entra con esa cuenta. La conexión del proyecto ya viene configurada.

## Seguridad y copias

- La URL y la clave `publishable` configuradas en `index.html` son datos públicos de cliente; no incluyen permisos para saltarse las políticas RLS.
- Nunca pongas la clave `service_role` o `sb_secret_` en la web ni en GitHub.
- La sincronización guarda cambios automáticamente tras una breve pausa. Si falla, la app conserva los datos locales y muestra un estado de error.
- Descarga copias JSON periódicamente desde **Copia de seguridad**. Ese archivo contiene datos personales; guárdalo en un lugar privado.
