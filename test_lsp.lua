-- Test file to verify LSP functionality
local function test_function()
  print("Hello, LSP!")
  
  -- This should show completion and diagnostics
  local variable = "test"
  local another_var = variable:upper()
  
  return another_var
end

-- This should show an error (intentional)
local unused_variable = "this will show a warning"

test_function()
