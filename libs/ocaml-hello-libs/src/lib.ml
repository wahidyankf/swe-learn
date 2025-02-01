let get_current_time () = 
  let now = Unix.time () |> Unix.gmtime in
  Printf.sprintf "%04d-%02d-%02dT%02d:%02d:%02dZ"
    (now.Unix.tm_year + 1900)
    (now.Unix.tm_mon + 1)
    now.Unix.tm_mday
    now.Unix.tm_hour
    now.Unix.tm_min
    now.Unix.tm_sec
