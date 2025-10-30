import Lake
open Lake DSL

package «advaita-vedanta» where
  version := v!"4.5.0"

lean_lib AdvaitaVedanta where
  roots := #[`AdvaitaVedanta]

@[default_target]
lean_exe advaita where
  root := `Main
  supportInterpreter := true
