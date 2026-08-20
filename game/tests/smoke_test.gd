extends SceneTree

const EXPECTED_PROJECT_NAME := "Antique AI Game"

func _init() -> void:
    var project_name := str(ProjectSettings.get_setting("application/config/name", ""))

    if project_name != EXPECTED_PROJECT_NAME:
        printerr(
            "FAIL: expected project name '%s', got '%s'."
            % [EXPECTED_PROJECT_NAME, project_name]
        )
        quit(1)
        return

    print("PASS: Godot smoke test executed successfully.")
    quit(0)
