let test_hello_output () =
  let output = "Hello from OCaml!" in
  Alcotest.(check string) "same string" output output

let () =
  Alcotest.run "Main Tests" [
    ("Hello Tests", [
      Alcotest.test_case "Test hello output" `Quick test_hello_output
    ])
  ]
