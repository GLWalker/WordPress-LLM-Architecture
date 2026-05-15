const fs = require('fs');
const path = require('path');
const Ajv = require('ajv');

const ajv = new Ajv({ allErrors: true });

/**
 * Manifest Validation Utility
 * Purpose: Enforces "Machine Law" by validating JSON manifests against core schemas.
 */

const SCHEMAS = {
  symbol: 'schemas/core/v1/symbol-schema.json',
  event: 'schemas/core/v1/event-schema.json'
};

function validateManifest(filePath, schemaPath) {
  console.log(`🔍 Validating ${filePath} against ${schemaPath}...`);
  
  try {
    const schema = JSON.parse(fs.readFileSync(schemaPath, 'utf8'));
    const data = JSON.parse(fs.readFileSync(filePath, 'utf8'));
    
    const validate = ajv.compile(schema);
    const valid = validate(data);
    
    if (valid) {
      console.log(`✅ ${path.basename(filePath)} is valid.`);
    } else {
      console.error(`❌ Validation failed for ${path.basename(filePath)}:`);
      console.error(ajv.errorsText(validate.errors));
      process.exit(1);
    }
  } catch (err) {
    console.error(`❌ Error reading files: ${err.message}`);
    process.exit(1);
  }
}

// Operational Check
console.log("🛠️ Starting Manifest Validation Pass...");

// Example Validation
validateManifest(
  'examples/manifests/PROJECT-X-SYMBOLS.json', 
  SCHEMAS.symbol
);

validateManifest(
  'examples/manifests/PROJECT-X-EVENTS.json', 
  SCHEMAS.event
);

console.log("🏁 All manifests passed governance check.");
