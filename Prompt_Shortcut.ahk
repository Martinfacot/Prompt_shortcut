#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; option to quit the script if necessary
^!q::ExitApp  ; Ctrl+Alt+Q pour quitter le script

; Define your shortcut (Ctrl+J in this example)
^j::
  ; Clipboard to avoid potential problems with SendInput
  clipboard =
(
<role>
You are an expert assistant in 
</role>
<context>
I need help to create a detailed plan for my project. You have expertise in project management and creative solutions.
</context>
<goal>
Provide a step-by-step guide with actionable advice, clear examples, and relevant best practices.
Provide a precise and relevant text for ...
</goal>
<instructions>
- Be clear, concise, and direct.
- Break down the solution into manageable parts.
- Include examples when possible.
- Ask clarifying questions if necessary.
</instructions>
<constraints>
- Use a friendly yet professional tone.
- Avoid technical jargon unless explicitly asked.
</constraints>
<example>
For instance, if asked about .. , provide a framework with steps like ..
</example>
)
  ClipWait, 2  ; Waits for the clipboard to be ready (2 second timeout)
  Send ^v  ;  Paste content
  
  ;Restore the original clipboard after a short delay
  Sleep, 100
  clipboard := clipboard_old
return