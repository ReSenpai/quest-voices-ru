# Как обновляется аддон

Озвучку и таблицы модуля здесь руками не правят: их собирает конвертер
[classic-wow-voiceover](https://github.com/ReSenpai/classic-wow-voiceover) (`python -m voru.catquest`).

1. В репозитории конвертера: `match` → прослушивание спорного → `build --version <новая>` → `verify` →
   `export --repo <рабочая копия этого репозитория>`.
2. Здесь: раздел новой версии в `CHANGELOG.md`, ветка, pull request.
3. Проверки PR (`.github/workflows/checks.yml`) должны быть зелёными: хэши, таблицы, Lua, декодирование новых и
   изменённых OGG, нет копии плеера VoiceOver, нет личных данных, версия новая.
4. После принятия PR в `main` релиз собирается сам (`.github/workflows/release.yml`).

Локально: `python tools/check.py` (быстро), `python tools/check.py --decode` (с ffmpeg), `python tools/package.py`.
