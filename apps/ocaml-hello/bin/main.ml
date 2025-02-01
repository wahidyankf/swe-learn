let hello_handler _request =
  let current_time = Lib.get_current_time () in
  let message = Printf.sprintf "Hello World: %s" current_time in
  let response = `Assoc [("message", `String message)] in
  Dream.json (Yojson.Basic.to_string response)

let () =
  Dream.run ~interface:"0.0.0.0" ~port:8080
  @@ Dream.logger
  @@ Dream.router [
    Dream.get "/api/hello" hello_handler
  ]
