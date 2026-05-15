#!/bin/bash

# llms-docs Setup Utility
# Purpose: Bootstraps the governance framework into a new project environment.

set -e

echo "🚀 Initializing llms-docs Governance Stack..."

# 1. Verification
if [ ! -f "AGENT-ENTRYPOINT.md" ]; then
    echo "❌ Error: Please run this script from the root of the llms-docs directory."
    exit 1
fi

# 2. Target Project Identification
echo "📂 Enter the absolute path to your target project root:"
read -r TARGET_PROJECT

if [ ! -d "$TARGET_PROJECT" ]; then
    echo "❌ Error: Target directory does not exist."
    exit 1
fi

# 3. Deploying the .agents/ Workflow
echo "📦 Deploying .agents/ workflow to $TARGET_PROJECT..."
cp -r .agents/ "$TARGET_PROJECT/"

# 4. Verifying Symlinks/Paths
echo "🔗 linking governance stack to $TARGET_PROJECT..."
# Note: For best results with AI IDEs, we copy or symlink the docs.
# For simplicity in this version, we assume the user keeps llms-docs adjacent or inside.
# We will create a .llms-docs-path file in the target project for retrieval anchors.
echo "$(pwd)" > "$TARGET_PROJECT/.llms-docs-path"

# 5. Success Message
echo "✅ Setup Complete!"
echo ""
echo "Next Steps for $TARGET_PROJECT:"
echo "1. Open your AI IDE (Cursor, Windsurf, etc.)."
echo "2. Trigger the workflow with the command: /wp-dev-helper"
echo "3. Verify ingestion via the AGENT-ENTRYPOINT.md log."
echo ""
echo "Refer to llms-docs/docs/ADOPTION-STRATEGY.md for advanced tuning."
