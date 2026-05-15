# Operational Walkthrough: Adding a SystemDeck Widget

## 1. Goal

Implement a new `NotesWidget` in the SystemDeck plugin using the full governance stack to ensure architectural precision and zero-drift.

## 2. Step 1: Ingestion & Classification

**Agent Action**:
- Load `AGENT-ENTRYPOINT.md`.
- Classify Task: **Project-Specific (SystemDeck)**.
- Set Execution Mode: **Surgical Patch Mode** (Default).

**Reasoning**:
> "The task involves adding a new component to an existing project. I must first establish the behavioral law and then ingest the project-specific constraints."

## 3. Step 2: Specialization (Loading the Overlay)

**Agent Action**:
- Ingest `examples/demonstrations/systemdeck-widget/SYSTEMDECK-OVERLAY.md`.

**Reasoning**:
> "The overlay mandates the `SystemDeck\Widgets\` namespace and restricts new classes to `src/Widgets/`. I am now governed by these project-specific laws."

## 4. Step 3: Resolution (Manifest Mapping)

**Agent Action**:
- Ingest `SYSTEMDECK-WIDGET-SYMBOLS.json` and `SYSTEMDECK-WIDGET-EVENTS.json`.

**Reasoning**:
> "Generation is a mapping, not an invention. I see the `NotesWidget` record and the `sd_register_widgets` action hook. My generation path is now deterministic."

## 5. Step 4: Mutation (The Surgical Patch)

**Agent Action**:
- Propose a patch for `core/Assets.php` to register the widget.

**Patch Plan**:
- **Target**: `SystemDeck\Core\Assets::register_components()`
- **Action**: Add `add_action('sd_register_widgets', [NotesWidget::class, 'init']);`
- **Constraint**: No other lines in `Assets.php` will be touched.

## 6. Step 5: Verification (Targeted Proof)

**Agent Action**:
- **Source Verification**: Confirm the new file exists at `src/Widgets/NotesWidget.php`.
- **Targeted Verification**: Inspect `core/Assets.php` to confirm the hook is correctly placed within the class method.
- **Confidence Label**: **CONFIRMED** (Source Traceable).

---

## 7. Outcome

By following this walkthrough, the agent ensured:
- No namespacing drift (followed Overlay).
- No file path drift (followed Directory Role contract).
- No registration drift (followed Manifest).
- High confidence (followed Verification contract).

END OF FILE
