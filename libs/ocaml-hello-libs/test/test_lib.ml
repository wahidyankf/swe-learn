let test_current_time_format () =
  let time_str = Lib.get_current_time () in
  let re = Re.Pcre.regexp "^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}Z$" in
  Alcotest.(check bool) "valid ISO8601 format" true (Re.execp re time_str)

let () =
  Alcotest.run "Lib Tests" [
    ("Time Tests", [
      Alcotest.test_case "Test time format" `Quick test_current_time_format
    ])
  ]
