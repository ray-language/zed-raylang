//! Extensión de Zed para raylang: cablea el servidor `ray lsp` del toolchain.

use zed_extension_api as zed;

struct RaylangExtension;

impl zed::Extension for RaylangExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &zed::LanguageServerId,
        worktree: &zed::Worktree,
    ) -> zed::Result<zed::Command> {
        // El servidor vive en el binario del lenguaje: `ray lsp` (raylang es
        // un alias del mismo binario, por si solo está instalado ese nombre).
        let path = worktree
            .which("ray")
            .or_else(|| worktree.which("raylang"))
            .ok_or_else(|| {
                "`ray` not found in PATH. Install raylang: https://raylang.dev/#empezar"
                    .to_string()
            })?;
        Ok(zed::Command {
            command: path,
            args: vec!["lsp".to_string()],
            env: Vec::new(),
        })
    }
}

zed::register_extension!(RaylangExtension);
