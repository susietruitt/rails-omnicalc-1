Rails.application.routes.draw do


  get("/square/new", {controller: "rps", action: "new_square"})

  get("/square/results", {controller: "rps", action: "square_results"})

  get("/square_root/new", {controller: "rps", action: "new_square_root"})

  get("/square_root/results", {controller: "rps", action: "square_root_results"})

  get("/payment/new", {controller: "rps", action: "new_payment"})

  get("/payment/results", {controller: "rps", action: "payment_results"})

  get("/random/new", {controller: "rps", action: "new_random"})

  get("/random/results", {controller: "rps", action: "random_results"})

end
